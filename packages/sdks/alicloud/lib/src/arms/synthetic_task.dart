import 'package:pulumi/pulumi.dart' as pulumi;
import 'synthetic_task_args.dart';
import 'synthetic_task_common_setting.dart';
import 'synthetic_task_custom_period.dart';
import 'synthetic_task_monitor_conf.dart';
import 'synthetic_task_state.dart';

/// Provides a ARMS Synthetic Task resource. Cloud Synthetic task resources.
///
/// For information about ARMS Synthetic Task and how to use it, see [What is Synthetic Task](https://next.api.alibabacloud.com/document/ARMS/2019-08-08/CreateTimingSyntheticTask).
///
/// &gt; **NOTE:** Available since v1.215.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultSyntheticTask = new alicloud.arms.SyntheticTask("default", {
///     monitors: [{
///         cityCode: "1200101",
///         operatorCode: "246",
///         clientType: 4,
///     }],
///     syntheticTaskName: name,
///     customPeriod: {
///         endHour: 12,
///         startHour: 11,
///     },
///     availableAssertions: [
///         {
///             type: "IcmpPackLoss",
///             operator: "neq",
///             expect: "200",
///             target: "example",
///         },
///         {
///             type: "IcmpPackAvgLatency",
///             operator: "lte",
///             expect: "1000",
///         },
///         {
///             type: "IcmpPackMaxLatency",
///             operator: "lte",
///             expect: "10000",
///         },
///     ],
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
///     status: "RUNNING",
///     monitorConf: {
///         netTcp: {
///             tracertTimeout: 1050,
///             targetUrl: "www.aliyun.com",
///             connectTimes: 6,
///             interval: 300,
///             timeout: 3000,
///             tracertNumMax: 2,
///         },
///         netDns: {
///             queryMethod: 1,
///             timeout: 5050,
///             targetUrl: "www.aliyun.com",
///             dnsServerIpType: 1,
///             nsServer: "61.128.114.167",
///         },
///         apiHttp: {
///             timeout: 10050,
///             targetUrl: "https://www.aliyun.com",
///             method: "POST",
///             requestHeaders: {
///                 key1: "value1",
///             },
///             requestBody: {
///                 content: "example2",
///                 type: "text/html",
///             },
///             connectTimeout: 6000,
///         },
///         website: {
///             slowElementThreshold: 5005,
///             verifyStringBlacklist: "Failed",
///             elementBlacklist: "a.jpg",
///             disableCompression: 1,
///             ignoreCertificateError: 0,
///             monitorTimeout: 20000,
///             redirection: 0,
///             dnsHijackWhitelist: "www.aliyun.com:203.0.3.55",
///             pageTamper: "www.aliyun.com:|/cc/bb/a.gif",
///             flowHijackJumpTimes: 10,
///             customHeader: 1,
///             disableCache: 1,
///             verifyStringWhitelist: "Senyuan",
///             targetUrl: "http://www.aliyun.com",
///             automaticScrolling: 1,
///             waitCompletionTime: 5005,
///             flowHijackLogo: "senyuan1",
///             customHeaderContent: {
///                 key1: "value1",
///             },
///             filterInvalidIp: 0,
///         },
///         fileDownload: {
///             whiteList: "www.aliyun.com:203.0.3.55",
///             monitorTimeout: 1050,
///             ignoreCertificateUntrustworthyError: 0,
///             redirection: 0,
///             ignoreCertificateCanceledError: 0,
///             ignoreCertificateAuthError: 0,
///             ignoreCertificateOutOfDateError: 0,
///             ignoreCertificateUsingError: 0,
///             connectionTimeout: 6090,
///             ignoreInvalidHostError: 0,
///             verifyWay: 0,
///             customHeaderContent: {
///                 key1: "value1",
///             },
///             targetUrl: "https://www.aliyun.com",
///             downloadKernel: 0,
///             quickProtocol: 2,
///             ignoreCertificateStatusError: 1,
///             transmissionSize: 128,
///             validateKeywords: "senyuan1",
///         },
///         stream: {
///             streamMonitorTimeout: 10,
///             streamAddressType: 0,
///             playerType: 2,
///             customHeaderContent: {
///                 key1: "value1",
///             },
///             whiteList: "www.aliyun.com:203.0.3.55",
///             targetUrl: "https://acd-assets.alicdn.com:443/2021productweek/week1_s.mp4",
///             streamType: 1,
///         },
///         netIcmp: {
///             targetUrl: "www.aliyun.com",
///             interval: 200,
///             packageNum: 36,
///             packageSize: 512,
///             timeout: 1000,
///             tracertEnable: true,
///             tracertNumMax: 1,
///             tracertTimeout: 1200,
///         },
///     },
///     taskType: 1,
///     frequency: "1h",
///     monitorCategory: 1,
///     commonSetting: {
///         xtraceRegion: "cn-beijing",
///         customHost: {
///             hosts: [
///                 {
///                     domain: "www.a.aliyun.com",
///                     ips: ["153.3.238.102"],
///                     ipType: 0,
///                 },
///                 {
///                     domain: "www.shifen.com",
///                     ips: [
///                         "153.3.238.110",
///                         "114.114.114.114",
///                         "127.0.0.1",
///                     ],
///                     ipType: 1,
///                 },
///                 {
///                     domain: "www.aliyun.com",
///                     ips: [
///                         "153.3.238.110",
///                         "180.101.50.242",
///                         "180.101.50.188",
///                     ],
///                     ipType: 0,
///                 },
///             ],
///             selectType: 1,
///         },
///         monitorSamples: 1,
///         ipType: 1,
///         isOpenTrace: true,
///         traceClientType: 1,
///     },
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_synthetic_task = alicloud.arms.SyntheticTask("default",
///     monitors=[{
///         "city_code": "1200101",
///         "operator_code": "246",
///         "client_type": 4,
///     }],
///     synthetic_task_name=name,
///     custom_period={
///         "end_hour": 12,
///         "start_hour": 11,
///     },
///     available_assertions=[
///         {
///             "type": "IcmpPackLoss",
///             "operator": "neq",
///             "expect": "200",
///             "target": "example",
///         },
///         {
///             "type": "IcmpPackAvgLatency",
///             "operator": "lte",
///             "expect": "1000",
///         },
///         {
///             "type": "IcmpPackMaxLatency",
///             "operator": "lte",
///             "expect": "10000",
///         },
///     ],
///     tags={
///         "Created": "TF",
///         "For": "example",
///     },
///     status="RUNNING",
///     monitor_conf={
///         "net_tcp": {
///             "tracert_timeout": 1050,
///             "target_url": "www.aliyun.com",
///             "connect_times": 6,
///             "interval": 300,
///             "timeout": 3000,
///             "tracert_num_max": 2,
///         },
///         "net_dns": {
///             "query_method": 1,
///             "timeout": 5050,
///             "target_url": "www.aliyun.com",
///             "dns_server_ip_type": 1,
///             "ns_server": "61.128.114.167",
///         },
///         "api_http": {
///             "timeout": 10050,
///             "target_url": "https://www.aliyun.com",
///             "method": "POST",
///             "request_headers": {
///                 "key1": "value1",
///             },
///             "request_body": {
///                 "content": "example2",
///                 "type": "text/html",
///             },
///             "connect_timeout": 6000,
///         },
///         "website": {
///             "slow_element_threshold": 5005,
///             "verify_string_blacklist": "Failed",
///             "element_blacklist": "a.jpg",
///             "disable_compression": 1,
///             "ignore_certificate_error": 0,
///             "monitor_timeout": 20000,
///             "redirection": 0,
///             "dns_hijack_whitelist": "www.aliyun.com:203.0.3.55",
///             "page_tamper": "www.aliyun.com:|/cc/bb/a.gif",
///             "flow_hijack_jump_times": 10,
///             "custom_header": 1,
///             "disable_cache": 1,
///             "verify_string_whitelist": "Senyuan",
///             "target_url": "http://www.aliyun.com",
///             "automatic_scrolling": 1,
///             "wait_completion_time": 5005,
///             "flow_hijack_logo": "senyuan1",
///             "custom_header_content": {
///                 "key1": "value1",
///             },
///             "filter_invalid_ip": 0,
///         },
///         "file_download": {
///             "white_list": "www.aliyun.com:203.0.3.55",
///             "monitor_timeout": 1050,
///             "ignore_certificate_untrustworthy_error": 0,
///             "redirection": 0,
///             "ignore_certificate_canceled_error": 0,
///             "ignore_certificate_auth_error": 0,
///             "ignore_certificate_out_of_date_error": 0,
///             "ignore_certificate_using_error": 0,
///             "connection_timeout": 6090,
///             "ignore_invalid_host_error": 0,
///             "verify_way": 0,
///             "custom_header_content": {
///                 "key1": "value1",
///             },
///             "target_url": "https://www.aliyun.com",
///             "download_kernel": 0,
///             "quick_protocol": 2,
///             "ignore_certificate_status_error": 1,
///             "transmission_size": 128,
///             "validate_keywords": "senyuan1",
///         },
///         "stream": {
///             "stream_monitor_timeout": 10,
///             "stream_address_type": 0,
///             "player_type": 2,
///             "custom_header_content": {
///                 "key1": "value1",
///             },
///             "white_list": "www.aliyun.com:203.0.3.55",
///             "target_url": "https://acd-assets.alicdn.com:443/2021productweek/week1_s.mp4",
///             "stream_type": 1,
///         },
///         "net_icmp": {
///             "target_url": "www.aliyun.com",
///             "interval": 200,
///             "package_num": 36,
///             "package_size": 512,
///             "timeout": 1000,
///             "tracert_enable": True,
///             "tracert_num_max": 1,
///             "tracert_timeout": 1200,
///         },
///     },
///     task_type=1,
///     frequency="1h",
///     monitor_category=1,
///     common_setting={
///         "xtrace_region": "cn-beijing",
///         "custom_host": {
///             "hosts": [
///                 {
///                     "domain": "www.a.aliyun.com",
///                     "ips": ["153.3.238.102"],
///                     "ip_type": 0,
///                 },
///                 {
///                     "domain": "www.shifen.com",
///                     "ips": [
///                         "153.3.238.110",
///                         "114.114.114.114",
///                         "127.0.0.1",
///                     ],
///                     "ip_type": 1,
///                 },
///                 {
///                     "domain": "www.aliyun.com",
///                     "ips": [
///                         "153.3.238.110",
///                         "180.101.50.242",
///                         "180.101.50.188",
///                     ],
///                     "ip_type": 0,
///                 },
///             ],
///             "select_type": 1,
///         },
///         "monitor_samples": 1,
///         "ip_type": 1,
///         "is_open_trace": True,
///         "trace_client_type": 1,
///     },
///     resource_group_id=default.ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultSyntheticTask = new AliCloud.Arms.SyntheticTask("default", new()
///     {
///         Monitors = new[]
///         {
///             new AliCloud.Arms.Inputs.SyntheticTaskMonitorArgs
///             {
///                 CityCode = "1200101",
///                 OperatorCode = "246",
///                 ClientType = 4,
///             },
///         },
///         SyntheticTaskName = name,
///         CustomPeriod = new AliCloud.Arms.Inputs.SyntheticTaskCustomPeriodArgs
///         {
///             EndHour = 12,
///             StartHour = 11,
///         },
///         AvailableAssertions = new[]
///         {
///             new AliCloud.Arms.Inputs.SyntheticTaskAvailableAssertionArgs
///             {
///                 Type = "IcmpPackLoss",
///                 Operator = "neq",
///                 Expect = "200",
///                 Target = "example",
///             },
///             new AliCloud.Arms.Inputs.SyntheticTaskAvailableAssertionArgs
///             {
///                 Type = "IcmpPackAvgLatency",
///                 Operator = "lte",
///                 Expect = "1000",
///             },
///             new AliCloud.Arms.Inputs.SyntheticTaskAvailableAssertionArgs
///             {
///                 Type = "IcmpPackMaxLatency",
///                 Operator = "lte",
///                 Expect = "10000",
///             },
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///         Status = "RUNNING",
///         MonitorConf = new AliCloud.Arms.Inputs.SyntheticTaskMonitorConfArgs
///         {
///             NetTcp = new AliCloud.Arms.Inputs.SyntheticTaskMonitorConfNetTcpArgs
///             {
///                 TracertTimeout = 1050,
///                 TargetUrl = "www.aliyun.com",
///                 ConnectTimes = 6,
///                 Interval = 300,
///                 Timeout = 3000,
///                 TracertNumMax = 2,
///             },
///             NetDns = new AliCloud.Arms.Inputs.SyntheticTaskMonitorConfNetDnsArgs
///             {
///                 QueryMethod = 1,
///                 Timeout = 5050,
///                 TargetUrl = "www.aliyun.com",
///                 DnsServerIpType = 1,
///                 NsServer = "61.128.114.167",
///             },
///             ApiHttp = new AliCloud.Arms.Inputs.SyntheticTaskMonitorConfApiHttpArgs
///             {
///                 Timeout = 10050,
///                 TargetUrl = "https://www.aliyun.com",
///                 Method = "POST",
///                 RequestHeaders =
///                 {
///                     { "key1", "value1" },
///                 },
///                 RequestBody = new AliCloud.Arms.Inputs.SyntheticTaskMonitorConfApiHttpRequestBodyArgs
///                 {
///                     Content = "example2",
///                     Type = "text/html",
///                 },
///                 ConnectTimeout = 6000,
///             },
///             Website = new AliCloud.Arms.Inputs.SyntheticTaskMonitorConfWebsiteArgs
///             {
///                 SlowElementThreshold = 5005,
///                 VerifyStringBlacklist = "Failed",
///                 ElementBlacklist = "a.jpg",
///                 DisableCompression = 1,
///                 IgnoreCertificateError = 0,
///                 MonitorTimeout = 20000,
///                 Redirection = 0,
///                 DnsHijackWhitelist = "www.aliyun.com:203.0.3.55",
///                 PageTamper = "www.aliyun.com:|/cc/bb/a.gif",
///                 FlowHijackJumpTimes = 10,
///                 CustomHeader = 1,
///                 DisableCache = 1,
///                 VerifyStringWhitelist = "Senyuan",
///                 TargetUrl = "http://www.aliyun.com",
///                 AutomaticScrolling = 1,
///                 WaitCompletionTime = 5005,
///                 FlowHijackLogo = "senyuan1",
///                 CustomHeaderContent =
///                 {
///                     { "key1", "value1" },
///                 },
///                 FilterInvalidIp = 0,
///             },
///             FileDownload = new AliCloud.Arms.Inputs.SyntheticTaskMonitorConfFileDownloadArgs
///             {
///                 WhiteList = "www.aliyun.com:203.0.3.55",
///                 MonitorTimeout = 1050,
///                 IgnoreCertificateUntrustworthyError = 0,
///                 Redirection = 0,
///                 IgnoreCertificateCanceledError = 0,
///                 IgnoreCertificateAuthError = 0,
///                 IgnoreCertificateOutOfDateError = 0,
///                 IgnoreCertificateUsingError = 0,
///                 ConnectionTimeout = 6090,
///                 IgnoreInvalidHostError = 0,
///                 VerifyWay = 0,
///                 CustomHeaderContent =
///                 {
///                     { "key1", "value1" },
///                 },
///                 TargetUrl = "https://www.aliyun.com",
///                 DownloadKernel = 0,
///                 QuickProtocol = 2,
///                 IgnoreCertificateStatusError = 1,
///                 TransmissionSize = 128,
///                 ValidateKeywords = "senyuan1",
///             },
///             Stream = new AliCloud.Arms.Inputs.SyntheticTaskMonitorConfStreamArgs
///             {
///                 StreamMonitorTimeout = 10,
///                 StreamAddressType = 0,
///                 PlayerType = 2,
///                 CustomHeaderContent =
///                 {
///                     { "key1", "value1" },
///                 },
///                 WhiteList = "www.aliyun.com:203.0.3.55",
///                 TargetUrl = "https://acd-assets.alicdn.com:443/2021productweek/week1_s.mp4",
///                 StreamType = 1,
///             },
///             NetIcmp = new AliCloud.Arms.Inputs.SyntheticTaskMonitorConfNetIcmpArgs
///             {
///                 TargetUrl = "www.aliyun.com",
///                 Interval = 200,
///                 PackageNum = 36,
///                 PackageSize = 512,
///                 Timeout = 1000,
///                 TracertEnable = true,
///                 TracertNumMax = 1,
///                 TracertTimeout = 1200,
///             },
///         },
///         TaskType = 1,
///         Frequency = "1h",
///         MonitorCategory = 1,
///         CommonSetting = new AliCloud.Arms.Inputs.SyntheticTaskCommonSettingArgs
///         {
///             XtraceRegion = "cn-beijing",
///             CustomHost = new AliCloud.Arms.Inputs.SyntheticTaskCommonSettingCustomHostArgs
///             {
///                 Hosts = new[]
///                 {
///                     new AliCloud.Arms.Inputs.SyntheticTaskCommonSettingCustomHostHostArgs
///                     {
///                         Domain = "www.a.aliyun.com",
///                         Ips = new[]
///                         {
///                             "153.3.238.102",
///                         },
///                         IpType = 0,
///                     },
///                     new AliCloud.Arms.Inputs.SyntheticTaskCommonSettingCustomHostHostArgs
///                     {
///                         Domain = "www.shifen.com",
///                         Ips = new[]
///                         {
///                             "153.3.238.110",
///                             "114.114.114.114",
///                             "127.0.0.1",
///                         },
///                         IpType = 1,
///                     },
///                     new AliCloud.Arms.Inputs.SyntheticTaskCommonSettingCustomHostHostArgs
///                     {
///                         Domain = "www.aliyun.com",
///                         Ips = new[]
///                         {
///                             "153.3.238.110",
///                             "180.101.50.242",
///                             "180.101.50.188",
///                         },
///                         IpType = 0,
///                     },
///                 },
///                 SelectType = 1,
///             },
///             MonitorSamples = 1,
///             IpType = 1,
///             IsOpenTrace = true,
///             TraceClientType = 1,
///         },
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arms.NewSyntheticTask(ctx, "default", &arms.SyntheticTaskArgs{
/// 			Monitors: arms.SyntheticTaskMonitorArray{
/// 				&arms.SyntheticTaskMonitorArgs{
/// 					CityCode:     pulumi.String("1200101"),
/// 					OperatorCode: pulumi.String("246"),
/// 					ClientType:   pulumi.Int(4),
/// 				},
/// 			},
/// 			SyntheticTaskName: pulumi.String(name),
/// 			CustomPeriod: &arms.SyntheticTaskCustomPeriodArgs{
/// 				EndHour:   pulumi.Int(12),
/// 				StartHour: pulumi.Int(11),
/// 			},
/// 			AvailableAssertions: arms.SyntheticTaskAvailableAssertionArray{
/// 				&arms.SyntheticTaskAvailableAssertionArgs{
/// 					Type:     pulumi.String("IcmpPackLoss"),
/// 					Operator: pulumi.String("neq"),
/// 					Expect:   pulumi.String("200"),
/// 					Target:   pulumi.String("example"),
/// 				},
/// 				&arms.SyntheticTaskAvailableAssertionArgs{
/// 					Type:     pulumi.String("IcmpPackAvgLatency"),
/// 					Operator: pulumi.String("lte"),
/// 					Expect:   pulumi.String("1000"),
/// 				},
/// 				&arms.SyntheticTaskAvailableAssertionArgs{
/// 					Type:     pulumi.String("IcmpPackMaxLatency"),
/// 					Operator: pulumi.String("lte"),
/// 					Expect:   pulumi.String("10000"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 			Status: pulumi.String("RUNNING"),
/// 			MonitorConf: &arms.SyntheticTaskMonitorConfArgs{
/// 				NetTcp: &arms.SyntheticTaskMonitorConfNetTcpArgs{
/// 					TracertTimeout: pulumi.Int(1050),
/// 					TargetUrl:      pulumi.String("www.aliyun.com"),
/// 					ConnectTimes:   pulumi.Int(6),
/// 					Interval:       pulumi.Int(300),
/// 					Timeout:        pulumi.Int(3000),
/// 					TracertNumMax:  pulumi.Int(2),
/// 				},
/// 				NetDns: &arms.SyntheticTaskMonitorConfNetDnsArgs{
/// 					QueryMethod:     pulumi.Int(1),
/// 					Timeout:         pulumi.Int(5050),
/// 					TargetUrl:       pulumi.String("www.aliyun.com"),
/// 					DnsServerIpType: pulumi.Int(1),
/// 					NsServer:        pulumi.String("61.128.114.167"),
/// 				},
/// 				ApiHttp: &arms.SyntheticTaskMonitorConfApiHttpArgs{
/// 					Timeout:   pulumi.Int(10050),
/// 					TargetUrl: pulumi.String("https://www.aliyun.com"),
/// 					Method:    pulumi.String("POST"),
/// 					RequestHeaders: pulumi.StringMap{
/// 						"key1": pulumi.String("value1"),
/// 					},
/// 					RequestBody: &arms.SyntheticTaskMonitorConfApiHttpRequestBodyArgs{
/// 						Content: pulumi.String("example2"),
/// 						Type:    pulumi.String("text/html"),
/// 					},
/// 					ConnectTimeout: pulumi.Int(6000),
/// 				},
/// 				Website: &arms.SyntheticTaskMonitorConfWebsiteArgs{
/// 					SlowElementThreshold:   pulumi.Int(5005),
/// 					VerifyStringBlacklist:  pulumi.String("Failed"),
/// 					ElementBlacklist:       pulumi.String("a.jpg"),
/// 					DisableCompression:     pulumi.Int(1),
/// 					IgnoreCertificateError: pulumi.Int(0),
/// 					MonitorTimeout:         pulumi.Int(20000),
/// 					Redirection:            pulumi.Int(0),
/// 					DnsHijackWhitelist:     pulumi.String("www.aliyun.com:203.0.3.55"),
/// 					PageTamper:             pulumi.String("www.aliyun.com:|/cc/bb/a.gif"),
/// 					FlowHijackJumpTimes:    pulumi.Int(10),
/// 					CustomHeader:           pulumi.Int(1),
/// 					DisableCache:           pulumi.Int(1),
/// 					VerifyStringWhitelist:  pulumi.String("Senyuan"),
/// 					TargetUrl:              pulumi.String("http://www.aliyun.com"),
/// 					AutomaticScrolling:     pulumi.Int(1),
/// 					WaitCompletionTime:     pulumi.Int(5005),
/// 					FlowHijackLogo:         pulumi.String("senyuan1"),
/// 					CustomHeaderContent: pulumi.StringMap{
/// 						"key1": pulumi.String("value1"),
/// 					},
/// 					FilterInvalidIp: pulumi.Int(0),
/// 				},
/// 				FileDownload: &arms.SyntheticTaskMonitorConfFileDownloadArgs{
/// 					WhiteList:                           pulumi.String("www.aliyun.com:203.0.3.55"),
/// 					MonitorTimeout:                      pulumi.Int(1050),
/// 					IgnoreCertificateUntrustworthyError: pulumi.Int(0),
/// 					Redirection:                         pulumi.Int(0),
/// 					IgnoreCertificateCanceledError:      pulumi.Int(0),
/// 					IgnoreCertificateAuthError:          pulumi.Int(0),
/// 					IgnoreCertificateOutOfDateError:     pulumi.Int(0),
/// 					IgnoreCertificateUsingError:         pulumi.Int(0),
/// 					ConnectionTimeout:                   pulumi.Int(6090),
/// 					IgnoreInvalidHostError:              pulumi.Int(0),
/// 					VerifyWay:                           pulumi.Int(0),
/// 					CustomHeaderContent: pulumi.StringMap{
/// 						"key1": pulumi.String("value1"),
/// 					},
/// 					TargetUrl:                    pulumi.String("https://www.aliyun.com"),
/// 					DownloadKernel:               pulumi.Int(0),
/// 					QuickProtocol:                pulumi.Int(2),
/// 					IgnoreCertificateStatusError: pulumi.Int(1),
/// 					TransmissionSize:             pulumi.Int(128),
/// 					ValidateKeywords:             pulumi.String("senyuan1"),
/// 				},
/// 				Stream: &arms.SyntheticTaskMonitorConfStreamArgs{
/// 					StreamMonitorTimeout: pulumi.Int(10),
/// 					StreamAddressType:    pulumi.Int(0),
/// 					PlayerType:           pulumi.Int(2),
/// 					CustomHeaderContent: pulumi.StringMap{
/// 						"key1": pulumi.String("value1"),
/// 					},
/// 					WhiteList:  pulumi.String("www.aliyun.com:203.0.3.55"),
/// 					TargetUrl:  pulumi.String("https://acd-assets.alicdn.com:443/2021productweek/week1_s.mp4"),
/// 					StreamType: pulumi.Int(1),
/// 				},
/// 				NetIcmp: &arms.SyntheticTaskMonitorConfNetIcmpArgs{
/// 					TargetUrl:      pulumi.String("www.aliyun.com"),
/// 					Interval:       pulumi.Int(200),
/// 					PackageNum:     pulumi.Int(36),
/// 					PackageSize:    pulumi.Int(512),
/// 					Timeout:        pulumi.Int(1000),
/// 					TracertEnable:  pulumi.Bool(true),
/// 					TracertNumMax:  pulumi.Int(1),
/// 					TracertTimeout: pulumi.Int(1200),
/// 				},
/// 			},
/// 			TaskType:        pulumi.Int(1),
/// 			Frequency:       pulumi.String("1h"),
/// 			MonitorCategory: pulumi.Int(1),
/// 			CommonSetting: &arms.SyntheticTaskCommonSettingArgs{
/// 				XtraceRegion: pulumi.String("cn-beijing"),
/// 				CustomHost: &arms.SyntheticTaskCommonSettingCustomHostArgs{
/// 					Hosts: arms.SyntheticTaskCommonSettingCustomHostHostArray{
/// 						&arms.SyntheticTaskCommonSettingCustomHostHostArgs{
/// 							Domain: pulumi.String("www.a.aliyun.com"),
/// 							Ips: pulumi.StringArray{
/// 								pulumi.String("153.3.238.102"),
/// 							},
/// 							IpType: pulumi.Int(0),
/// 						},
/// 						&arms.SyntheticTaskCommonSettingCustomHostHostArgs{
/// 							Domain: pulumi.String("www.shifen.com"),
/// 							Ips: pulumi.StringArray{
/// 								pulumi.String("153.3.238.110"),
/// 								pulumi.String("114.114.114.114"),
/// 								pulumi.String("127.0.0.1"),
/// 							},
/// 							IpType: pulumi.Int(1),
/// 						},
/// 						&arms.SyntheticTaskCommonSettingCustomHostHostArgs{
/// 							Domain: pulumi.String("www.aliyun.com"),
/// 							Ips: pulumi.StringArray{
/// 								pulumi.String("153.3.238.110"),
/// 								pulumi.String("180.101.50.242"),
/// 								pulumi.String("180.101.50.188"),
/// 							},
/// 							IpType: pulumi.Int(0),
/// 						},
/// 					},
/// 					SelectType: pulumi.Int(1),
/// 				},
/// 				MonitorSamples:  pulumi.Int(1),
/// 				IpType:          pulumi.Int(1),
/// 				IsOpenTrace:     pulumi.Bool(true),
/// 				TraceClientType: pulumi.Int(1),
/// 			},
/// 			ResourceGroupId: pulumi.String(_default.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.arms.SyntheticTask;
/// import com.pulumi.alicloud.arms.SyntheticTaskArgs;
/// import com.pulumi.alicloud.arms.inputs.SyntheticTaskMonitorArgs;
/// import com.pulumi.alicloud.arms.inputs.SyntheticTaskCustomPeriodArgs;
/// import com.pulumi.alicloud.arms.inputs.SyntheticTaskAvailableAssertionArgs;
/// import com.pulumi.alicloud.arms.inputs.SyntheticTaskMonitorConfArgs;
/// import com.pulumi.alicloud.arms.inputs.SyntheticTaskMonitorConfNetTcpArgs;
/// import com.pulumi.alicloud.arms.inputs.SyntheticTaskMonitorConfNetDnsArgs;
/// import com.pulumi.alicloud.arms.inputs.SyntheticTaskMonitorConfApiHttpArgs;
/// import com.pulumi.alicloud.arms.inputs.SyntheticTaskMonitorConfApiHttpRequestBodyArgs;
/// import com.pulumi.alicloud.arms.inputs.SyntheticTaskMonitorConfWebsiteArgs;
/// import com.pulumi.alicloud.arms.inputs.SyntheticTaskMonitorConfFileDownloadArgs;
/// import com.pulumi.alicloud.arms.inputs.SyntheticTaskMonitorConfStreamArgs;
/// import com.pulumi.alicloud.arms.inputs.SyntheticTaskMonitorConfNetIcmpArgs;
/// import com.pulumi.alicloud.arms.inputs.SyntheticTaskCommonSettingArgs;
/// import com.pulumi.alicloud.arms.inputs.SyntheticTaskCommonSettingCustomHostArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultSyntheticTask = new SyntheticTask("defaultSyntheticTask", SyntheticTaskArgs.builder()
///             .monitors(SyntheticTaskMonitorArgs.builder()
///                 .cityCode("1200101")
///                 .operatorCode("246")
///                 .clientType(4)
///                 .build())
///             .syntheticTaskName(name)
///             .customPeriod(SyntheticTaskCustomPeriodArgs.builder()
///                 .endHour(12)
///                 .startHour(11)
///                 .build())
///             .availableAssertions(
///                 SyntheticTaskAvailableAssertionArgs.builder()
///                     .type("IcmpPackLoss")
///                     .operator("neq")
///                     .expect("200")
///                     .target("example")
///                     .build(),
///                 SyntheticTaskAvailableAssertionArgs.builder()
///                     .type("IcmpPackAvgLatency")
///                     .operator("lte")
///                     .expect("1000")
///                     .build(),
///                 SyntheticTaskAvailableAssertionArgs.builder()
///                     .type("IcmpPackMaxLatency")
///                     .operator("lte")
///                     .expect("10000")
///                     .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .status("RUNNING")
///             .monitorConf(SyntheticTaskMonitorConfArgs.builder()
///                 .netTcp(SyntheticTaskMonitorConfNetTcpArgs.builder()
///                     .tracertTimeout(1050)
///                     .targetUrl("www.aliyun.com")
///                     .connectTimes(6)
///                     .interval(300)
///                     .timeout(3000)
///                     .tracertNumMax(2)
///                     .build())
///                 .netDns(SyntheticTaskMonitorConfNetDnsArgs.builder()
///                     .queryMethod(1)
///                     .timeout(5050)
///                     .targetUrl("www.aliyun.com")
///                     .dnsServerIpType(1)
///                     .nsServer("61.128.114.167")
///                     .build())
///                 .apiHttp(SyntheticTaskMonitorConfApiHttpArgs.builder()
///                     .timeout(10050)
///                     .targetUrl("https://www.aliyun.com")
///                     .method("POST")
///                     .requestHeaders(Map.of("key1", "value1"))
///                     .requestBody(SyntheticTaskMonitorConfApiHttpRequestBodyArgs.builder()
///                         .content("example2")
///                         .type("text/html")
///                         .build())
///                     .connectTimeout(6000)
///                     .build())
///                 .website(SyntheticTaskMonitorConfWebsiteArgs.builder()
///                     .slowElementThreshold(5005)
///                     .verifyStringBlacklist("Failed")
///                     .elementBlacklist("a.jpg")
///                     .disableCompression(1)
///                     .ignoreCertificateError(0)
///                     .monitorTimeout(20000)
///                     .redirection(0)
///                     .dnsHijackWhitelist("www.aliyun.com:203.0.3.55")
///                     .pageTamper("www.aliyun.com:|/cc/bb/a.gif")
///                     .flowHijackJumpTimes(10)
///                     .customHeader(1)
///                     .disableCache(1)
///                     .verifyStringWhitelist("Senyuan")
///                     .targetUrl("http://www.aliyun.com")
///                     .automaticScrolling(1)
///                     .waitCompletionTime(5005)
///                     .flowHijackLogo("senyuan1")
///                     .customHeaderContent(Map.of("key1", "value1"))
///                     .filterInvalidIp(0)
///                     .build())
///                 .fileDownload(SyntheticTaskMonitorConfFileDownloadArgs.builder()
///                     .whiteList("www.aliyun.com:203.0.3.55")
///                     .monitorTimeout(1050)
///                     .ignoreCertificateUntrustworthyError(0)
///                     .redirection(0)
///                     .ignoreCertificateCanceledError(0)
///                     .ignoreCertificateAuthError(0)
///                     .ignoreCertificateOutOfDateError(0)
///                     .ignoreCertificateUsingError(0)
///                     .connectionTimeout(6090)
///                     .ignoreInvalidHostError(0)
///                     .verifyWay(0)
///                     .customHeaderContent(Map.of("key1", "value1"))
///                     .targetUrl("https://www.aliyun.com")
///                     .downloadKernel(0)
///                     .quickProtocol(2)
///                     .ignoreCertificateStatusError(1)
///                     .transmissionSize(128)
///                     .validateKeywords("senyuan1")
///                     .build())
///                 .stream(SyntheticTaskMonitorConfStreamArgs.builder()
///                     .streamMonitorTimeout(10)
///                     .streamAddressType(0)
///                     .playerType(2)
///                     .customHeaderContent(Map.of("key1", "value1"))
///                     .whiteList("www.aliyun.com:203.0.3.55")
///                     .targetUrl("https://acd-assets.alicdn.com:443/2021productweek/week1_s.mp4")
///                     .streamType(1)
///                     .build())
///                 .netIcmp(SyntheticTaskMonitorConfNetIcmpArgs.builder()
///                     .targetUrl("www.aliyun.com")
///                     .interval(200)
///                     .packageNum(36)
///                     .packageSize(512)
///                     .timeout(1000)
///                     .tracertEnable(true)
///                     .tracertNumMax(1)
///                     .tracertTimeout(1200)
///                     .build())
///                 .build())
///             .taskType(1)
///             .frequency("1h")
///             .monitorCategory(1)
///             .commonSetting(SyntheticTaskCommonSettingArgs.builder()
///                 .xtraceRegion("cn-beijing")
///                 .customHost(SyntheticTaskCommonSettingCustomHostArgs.builder()
///                     .hosts(
///                         SyntheticTaskCommonSettingCustomHostHostArgs.builder()
///                             .domain("www.a.aliyun.com")
///                             .ips("153.3.238.102")
///                             .ipType(0)
///                             .build(),
///                         SyntheticTaskCommonSettingCustomHostHostArgs.builder()
///                             .domain("www.shifen.com")
///                             .ips(
///                                 "153.3.238.110",
///                                 "114.114.114.114",
///                                 "127.0.0.1")
///                             .ipType(1)
///                             .build(),
///                         SyntheticTaskCommonSettingCustomHostHostArgs.builder()
///                             .domain("www.aliyun.com")
///                             .ips(
///                                 "153.3.238.110",
///                                 "180.101.50.242",
///                                 "180.101.50.188")
///                             .ipType(0)
///                             .build())
///                     .selectType(1)
///                     .build())
///                 .monitorSamples(1)
///                 .ipType(1)
///                 .isOpenTrace(true)
///                 .traceClientType(1)
///                 .build())
///             .resourceGroupId(default_.ids()[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultSyntheticTask:
///     type: alicloud:arms:SyntheticTask
///     name: default
///     properties:
///       monitors:
///         - cityCode: '1200101'
///           operatorCode: '246'
///           clientType: '4'
///       syntheticTaskName: ${name}
///       customPeriod:
///         endHour: '12'
///         startHour: '11'
///       availableAssertions:
///         - type: IcmpPackLoss
///           operator: neq
///           expect: '200'
///           target: example
///         - type: IcmpPackAvgLatency
///           operator: lte
///           expect: '1000'
///         - type: IcmpPackMaxLatency
///           operator: lte
///           expect: '10000'
///       tags:
///         Created: TF
///         For: example
///       status: RUNNING
///       monitorConf:
///         netTcp:
///           tracertTimeout: '1050'
///           targetUrl: www.aliyun.com
///           connectTimes: '6'
///           interval: '300'
///           timeout: '3000'
///           tracertNumMax: '2'
///         netDns:
///           queryMethod: '1'
///           timeout: '5050'
///           targetUrl: www.aliyun.com
///           dnsServerIpType: '1'
///           nsServer: 61.128.114.167
///         apiHttp:
///           timeout: '10050'
///           targetUrl: https://www.aliyun.com
///           method: POST
///           requestHeaders:
///             key1: value1
///           requestBody:
///             content: example2
///             type: text/html
///           connectTimeout: '6000'
///         website:
///           slowElementThreshold: '5005'
///           verifyStringBlacklist: Failed
///           elementBlacklist: a.jpg
///           disableCompression: '1'
///           ignoreCertificateError: '0'
///           monitorTimeout: '20000'
///           redirection: '0'
///           dnsHijackWhitelist: www.aliyun.com:203.0.3.55
///           pageTamper: www.aliyun.com:|/cc/bb/a.gif
///           flowHijackJumpTimes: '10'
///           customHeader: '1'
///           disableCache: '1'
///           verifyStringWhitelist: Senyuan
///           targetUrl: http://www.aliyun.com
///           automaticScrolling: '1'
///           waitCompletionTime: '5005'
///           flowHijackLogo: senyuan1
///           customHeaderContent:
///             key1: value1
///           filterInvalidIp: '0'
///         fileDownload:
///           whiteList: www.aliyun.com:203.0.3.55
///           monitorTimeout: '1050'
///           ignoreCertificateUntrustworthyError: '0'
///           redirection: '0'
///           ignoreCertificateCanceledError: '0'
///           ignoreCertificateAuthError: '0'
///           ignoreCertificateOutOfDateError: '0'
///           ignoreCertificateUsingError: '0'
///           connectionTimeout: '6090'
///           ignoreInvalidHostError: '0'
///           verifyWay: '0'
///           customHeaderContent:
///             key1: value1
///           targetUrl: https://www.aliyun.com
///           downloadKernel: '0'
///           quickProtocol: '2'
///           ignoreCertificateStatusError: '1'
///           transmissionSize: '128'
///           validateKeywords: senyuan1
///         stream:
///           streamMonitorTimeout: '10'
///           streamAddressType: '0'
///           playerType: '2'
///           customHeaderContent:
///             key1: value1
///           whiteList: www.aliyun.com:203.0.3.55
///           targetUrl: https://acd-assets.alicdn.com:443/2021productweek/week1_s.mp4
///           streamType: '1'
///         netIcmp:
///           targetUrl: www.aliyun.com
///           interval: '200'
///           packageNum: '36'
///           packageSize: '512'
///           timeout: '1000'
///           tracertEnable: 'true'
///           tracertNumMax: '1'
///           tracertTimeout: '1200'
///       taskType: '1'
///       frequency: 1h
///       monitorCategory: '1'
///       commonSetting:
///         xtraceRegion: cn-beijing
///         customHost:
///           hosts:
///             - domain: www.a.aliyun.com
///               ips:
///                 - 153.3.238.102
///               ipType: '0'
///             - domain: www.shifen.com
///               ips:
///                 - 153.3.238.110
///                 - 114.114.114.114
///                 - 127.0.0.1
///               ipType: '1'
///             - domain: www.aliyun.com
///               ips:
///                 - 153.3.238.110
///                 - 180.101.50.242
///                 - 180.101.50.188
///               ipType: '0'
///           selectType: '1'
///         monitorSamples: '1'
///         ipType: '1'
///         isOpenTrace: 'true'
///         traceClientType: '1'
///       resourceGroupId: ${default.ids[0]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ARMS Synthetic Task can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:arms/syntheticTask:SyntheticTask example <id>
/// ```
class SyntheticTask extends pulumi.CustomResource {
  /// Assertion List. See `available_assertions` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> availableAssertions;

  /// Common settings. See `common_setting` below.
  late final pulumi.Output<SyntheticTaskCommonSetting> commonSetting;

  /// Custom Cycle. See `custom_period` below.
  late final pulumi.Output<SyntheticTaskCustomPeriod?> customPeriod;

  /// Frequency.
  late final pulumi.Output<String> frequency;

  /// Classification of selected monitors.
  late final pulumi.Output<int> monitorCategory;

  /// Monitoring configuration. See `monitor_conf` below.
  late final pulumi.Output<SyntheticTaskMonitorConf> monitorConf;

  /// List of selected monitors. See `monitors` below.
  late final pulumi.Output<List<Map<String, dynamic>>> monitors;

  /// Describes which resource group the resource belongs.
  late final pulumi.Output<String> resourceGroupId;

  /// task status.
  late final pulumi.Output<String> status;

  /// The name of synthetic task.
  late final pulumi.Output<String> syntheticTaskName;

  /// The list of tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of synthetic task.
  late final pulumi.Output<int> taskType;

  /// Creates a new [SyntheticTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SyntheticTask]. {@macro pulumi_arms_synthetic_task_synthetic_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SyntheticTask(
    String name, {
    SyntheticTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:arms/syntheticTask:SyntheticTask',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    availableAssertions = registerOutput<List<Map<String, dynamic>>?>(
      'availableAssertions',
    );
    commonSetting = registerOutput<SyntheticTaskCommonSetting>(
      'commonSetting',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SyntheticTaskCommonSetting.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    customPeriod = registerOutput<SyntheticTaskCustomPeriod?>(
      'customPeriod',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SyntheticTaskCustomPeriod.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    frequency = registerOutput<String>('frequency');
    monitorCategory = registerOutput<int>('monitorCategory');
    monitorConf = registerOutput<SyntheticTaskMonitorConf>(
      'monitorConf',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SyntheticTaskMonitorConf.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    monitors = registerOutput<List<Map<String, dynamic>>>('monitors');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    syntheticTaskName = registerOutput<String>('syntheticTaskName');
    tags = registerOutput<Map<String, String>?>('tags');
    taskType = registerOutput<int>('taskType');
  }

  /// Gets an existing [SyntheticTask] resource's state with the given [name] and [id].
  static SyntheticTask get(
    String name,
    pulumi.Input<String> id, {
    SyntheticTaskState? state,
  }) {
    return SyntheticTask._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SyntheticTask._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:arms/syntheticTask:SyntheticTask',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    availableAssertions = registerOutput<List<Map<String, dynamic>>?>(
      'availableAssertions',
    );
    commonSetting = registerOutput<SyntheticTaskCommonSetting>(
      'commonSetting',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SyntheticTaskCommonSetting.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    customPeriod = registerOutput<SyntheticTaskCustomPeriod?>(
      'customPeriod',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SyntheticTaskCustomPeriod.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    frequency = registerOutput<String>('frequency');
    monitorCategory = registerOutput<int>('monitorCategory');
    monitorConf = registerOutput<SyntheticTaskMonitorConf>(
      'monitorConf',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SyntheticTaskMonitorConf.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    monitors = registerOutput<List<Map<String, dynamic>>>('monitors');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    syntheticTaskName = registerOutput<String>('syntheticTaskName');
    tags = registerOutput<Map<String, String>?>('tags');
    taskType = registerOutput<int>('taskType');
  }
}
