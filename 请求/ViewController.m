//
//  ViewController.m
//  请求
//
//  Created by 叶永长 on 2/23/16.
//  Copyright © 2016 YYC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //同步请求
    //get请求
    NSURL *url = [NSURL URLWithString:@"http://qydev.weixin.qq.com/wiki/index.php?title=%E4%B8%BB%E5%8A%A8%E8%B0%83%E7%94%A8"];
    NSURLRequest *request = [[NSURLRequest alloc]initWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10];
    
    NSURLSessionDataTask *daaa = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSString *str = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@",str);
        
    }];
    
    [daaa resume];
    
    //post请求
    
    
//    NSURL *posturl = [NSURL URLWithString:@"http://api.hudong.com/iphonexml.do"];
//    NSMutableURLRequest *postrequest = [[NSMutableURLRequest alloc]initWithURL:posturl cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:0];
//    [postrequest setHTTPMethod:@"post"];
//    NSString *str = @"type=focus-c";
//    NSData *postData = [str dataUsingEncoding:NSUTF8StringEncoding];
//    [postrequest setHTTPBody:postData];
//    
//    NSURLSessionDataTask *postTaskData = [[NSURLSession sharedSession] dataTaskWithRequest:postrequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        NSString *postStr = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
//        NSLog(@"%@",postStr);
//    }];
//    [postTaskData resume];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
