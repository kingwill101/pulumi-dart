import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';
import 'job_job_monitor_info.dart';
import 'job_map_task_xattrs.dart';
import 'job_state.dart';
import 'job_time_config.dart';

/// Provides a Schedulerx Job resource.
///
///
///
/// For information about Schedulerx Job and how to use it, see [What is Job](https://www.alibabacloud.com/help/en/schedulerx/schedulerx-serverless/developer-reference/api-schedulerx2-2019-04-30-createjob).
///
/// &gt; **NOTE:** Available since v1.240.0.
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
/// const createNameSpace = new alicloud.schedulerx.Namespace("CreateNameSpace", {
///     namespaceName: name,
///     description: name,
/// });
/// const _default = new alicloud.schedulerx.AppGroup("default", {
///     maxJobs: 100,
///     monitorContactsJson: JSON.stringify([
///         {
///             userName: "name1",
///             userPhone: "89756******",
///         },
///         {
///             userName: "name2",
///             ding: "http://www.example.com",
///         },
///     ]),
///     deleteJobs: false,
///     appType: 1,
///     namespaceSource: "schedulerx",
///     groupId: "example-appgroup-pop-autoexample",
///     namespaceName: "default",
///     description: name,
///     monitorConfigJson: JSON.stringify({
///         sendChannel: "sms,ding",
///     }),
///     appVersion: "1",
///     appName: "example-appgroup-pop-autoexample",
///     namespace: createNameSpace.namespaceUid,
///     enableLog: false,
///     scheduleBusyWorkers: false,
/// });
/// const defaultJob = new alicloud.schedulerx.Job("default", {
///     timezone: "GTM+7",
///     status: "Enable",
///     maxAttempt: 0,
///     description: name,
///     parameters: "hello word",
///     jobName: name,
///     maxConcurrency: "1",
///     timeConfig: {
///         dataOffset: 1,
///         timeExpression: "100000",
///         timeType: 3,
///         calendar: "workday",
///     },
///     mapTaskXattrs: {
///         taskMaxAttempt: 1,
///         taskAttemptInterval: 1,
///         consumerSize: 5,
///         queueSize: 10000,
///         dispatcherSize: 5,
///         pageSize: 100,
///     },
///     namespace: createNameSpace.namespaceUid,
///     groupId: _default.groupId,
///     jobType: "java",
///     jobMonitorInfo: {
///         contactInfos: [
///             {
///                 userPhone: "12345678910",
///                 userName: "tangtao-1",
///                 ding: "https://alidocs.dingtalk.com",
///                 userMail: "12345678@xx.com",
///             },
///             {
///                 userPhone: "12345678910",
///                 userName: "tangtao-2",
///                 ding: "https://alidocs.dingtalk.com1",
///                 userMail: "123456789@xx.com",
///             },
///         ],
///         monitorConfig: {
///             timeout: 7200,
///             sendChannel: "sms",
///             timeoutKillEnable: true,
///             timeoutEnable: true,
///             failEnable: true,
///             missWorkerEnable: true,
///         },
///     },
///     className: "com.aliyun.schedulerx.example.processor.SimpleJob",
///     namespaceSource: "schedulerx",
///     attemptInterval: 30,
///     failTimes: 1,
///     executeMode: "batch",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// create_name_space = alicloud.schedulerx.Namespace("CreateNameSpace",
///     namespace_name=name,
///     description=name)
/// default = alicloud.schedulerx.AppGroup("default",
///     max_jobs=100,
///     monitor_contacts_json=json.dumps([
///         {
///             "userName": "name1",
///             "userPhone": "89756******",
///         },
///         {
///             "userName": "name2",
///             "ding": "http://www.example.com",
///         },
///     ]),
///     delete_jobs=False,
///     app_type=1,
///     namespace_source="schedulerx",
///     group_id="example-appgroup-pop-autoexample",
///     namespace_name="default",
///     description=name,
///     monitor_config_json=json.dumps({
///         "sendChannel": "sms,ding",
///     }),
///     app_version="1",
///     app_name="example-appgroup-pop-autoexample",
///     namespace=create_name_space.namespace_uid,
///     enable_log=False,
///     schedule_busy_workers=False)
/// default_job = alicloud.schedulerx.Job("default",
///     timezone="GTM+7",
///     status="Enable",
///     max_attempt=0,
///     description=name,
///     parameters="hello word",
///     job_name=name,
///     max_concurrency="1",
///     time_config={
///         "data_offset": 1,
///         "time_expression": "100000",
///         "time_type": 3,
///         "calendar": "workday",
///     },
///     map_task_xattrs={
///         "task_max_attempt": 1,
///         "task_attempt_interval": 1,
///         "consumer_size": 5,
///         "queue_size": 10000,
///         "dispatcher_size": 5,
///         "page_size": 100,
///     },
///     namespace=create_name_space.namespace_uid,
///     group_id=default.group_id,
///     job_type="java",
///     job_monitor_info={
///         "contact_infos": [
///             {
///                 "user_phone": "12345678910",
///                 "user_name": "tangtao-1",
///                 "ding": "https://alidocs.dingtalk.com",
///                 "user_mail": "12345678@xx.com",
///             },
///             {
///                 "user_phone": "12345678910",
///                 "user_name": "tangtao-2",
///                 "ding": "https://alidocs.dingtalk.com1",
///                 "user_mail": "123456789@xx.com",
///             },
///         ],
///         "monitor_config": {
///             "timeout": 7200,
///             "send_channel": "sms",
///             "timeout_kill_enable": True,
///             "timeout_enable": True,
///             "fail_enable": True,
///             "miss_worker_enable": True,
///         },
///     },
///     class_name="com.aliyun.schedulerx.example.processor.SimpleJob",
///     namespace_source="schedulerx",
///     attempt_interval=30,
///     fail_times=1,
///     execute_mode="batch")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var createNameSpace = new AliCloud.SchedulerX.Namespace("CreateNameSpace", new()
///     {
///         NamespaceName = name,
///         Description = name,
///     });
///
///     var @default = new AliCloud.SchedulerX.AppGroup("default", new()
///     {
///         MaxJobs = 100,
///         MonitorContactsJson = JsonSerializer.Serialize(new[]
///         {
///             new Dictionary<string, object?>
///             {
///                 ["userName"] = "name1",
///                 ["userPhone"] = "89756******",
///             },
///             new Dictionary<string, object?>
///             {
///                 ["userName"] = "name2",
///                 ["ding"] = "http://www.example.com",
///             },
///         }),
///         DeleteJobs = false,
///         AppType = 1,
///         NamespaceSource = "schedulerx",
///         GroupId = "example-appgroup-pop-autoexample",
///         NamespaceName = "default",
///         Description = name,
///         MonitorConfigJson = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["sendChannel"] = "sms,ding",
///         }),
///         AppVersion = "1",
///         AppName = "example-appgroup-pop-autoexample",
///         Namespace = createNameSpace.NamespaceUid,
///         EnableLog = false,
///         ScheduleBusyWorkers = false,
///     });
///
///     var defaultJob = new AliCloud.SchedulerX.Job("default", new()
///     {
///         Timezone = "GTM+7",
///         Status = "Enable",
///         MaxAttempt = 0,
///         Description = name,
///         Parameters = "hello word",
///         JobName = name,
///         MaxConcurrency = "1",
///         TimeConfig = new AliCloud.SchedulerX.Inputs.JobTimeConfigArgs
///         {
///             DataOffset = 1,
///             TimeExpression = "100000",
///             TimeType = 3,
///             Calendar = "workday",
///         },
///         MapTaskXattrs = new AliCloud.SchedulerX.Inputs.JobMapTaskXattrsArgs
///         {
///             TaskMaxAttempt = 1,
///             TaskAttemptInterval = 1,
///             ConsumerSize = 5,
///             QueueSize = 10000,
///             DispatcherSize = 5,
///             PageSize = 100,
///         },
///         Namespace = createNameSpace.NamespaceUid,
///         GroupId = @default.GroupId,
///         JobType = "java",
///         JobMonitorInfo = new AliCloud.SchedulerX.Inputs.JobJobMonitorInfoArgs
///         {
///             ContactInfos = new[]
///             {
///                 new AliCloud.SchedulerX.Inputs.JobJobMonitorInfoContactInfoArgs
///                 {
///                     UserPhone = "12345678910",
///                     UserName = "tangtao-1",
///                     Ding = "https://alidocs.dingtalk.com",
///                     UserMail = "12345678@xx.com",
///                 },
///                 new AliCloud.SchedulerX.Inputs.JobJobMonitorInfoContactInfoArgs
///                 {
///                     UserPhone = "12345678910",
///                     UserName = "tangtao-2",
///                     Ding = "https://alidocs.dingtalk.com1",
///                     UserMail = "123456789@xx.com",
///                 },
///             },
///             MonitorConfig = new AliCloud.SchedulerX.Inputs.JobJobMonitorInfoMonitorConfigArgs
///             {
///                 Timeout = 7200,
///                 SendChannel = "sms",
///                 TimeoutKillEnable = true,
///                 TimeoutEnable = true,
///                 FailEnable = true,
///                 MissWorkerEnable = true,
///             },
///         },
///         ClassName = "com.aliyun.schedulerx.example.processor.SimpleJob",
///         NamespaceSource = "schedulerx",
///         AttemptInterval = 30,
///         FailTimes = 1,
///         ExecuteMode = "batch",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/schedulerx"
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
/// 		createNameSpace, err := schedulerx.NewNamespace(ctx, "CreateNameSpace", &schedulerx.NamespaceArgs{
/// 			NamespaceName: pulumi.String(name),
/// 			Description:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal([]interface{}{
/// 			map[string]interface{}{
/// 				"userName":  "name1",
/// 				"userPhone": "89756******",
/// 			},
/// 			map[string]interface{}{
/// 				"userName": "name2",
/// 				"ding":     "http://www.example.com",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"sendChannel": "sms,ding",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_default, err := schedulerx.NewAppGroup(ctx, "default", &schedulerx.AppGroupArgs{
/// 			MaxJobs:             pulumi.Int(100),
/// 			MonitorContactsJson: pulumi.String(json0),
/// 			DeleteJobs:          pulumi.Bool(false),
/// 			AppType:             pulumi.Int(1),
/// 			NamespaceSource:     pulumi.String("schedulerx"),
/// 			GroupId:             pulumi.String("example-appgroup-pop-autoexample"),
/// 			NamespaceName:       pulumi.String("default"),
/// 			Description:         pulumi.String(name),
/// 			MonitorConfigJson:   pulumi.String(json1),
/// 			AppVersion:          pulumi.String("1"),
/// 			AppName:             pulumi.String("example-appgroup-pop-autoexample"),
/// 			Namespace:           createNameSpace.NamespaceUid,
/// 			EnableLog:           pulumi.Bool(false),
/// 			ScheduleBusyWorkers: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = schedulerx.NewJob(ctx, "default", &schedulerx.JobArgs{
/// 			Timezone:       pulumi.String("GTM+7"),
/// 			Status:         pulumi.String("Enable"),
/// 			MaxAttempt:     pulumi.Int(0),
/// 			Description:    pulumi.String(name),
/// 			Parameters:     pulumi.String("hello word"),
/// 			JobName:        pulumi.String(name),
/// 			MaxConcurrency: pulumi.String("1"),
/// 			TimeConfig: &schedulerx.JobTimeConfigArgs{
/// 				DataOffset:     pulumi.Int(1),
/// 				TimeExpression: pulumi.String("100000"),
/// 				TimeType:       pulumi.Int(3),
/// 				Calendar:       pulumi.String("workday"),
/// 			},
/// 			MapTaskXattrs: &schedulerx.JobMapTaskXattrsArgs{
/// 				TaskMaxAttempt:      pulumi.Int(1),
/// 				TaskAttemptInterval: pulumi.Int(1),
/// 				ConsumerSize:        pulumi.Int(5),
/// 				QueueSize:           pulumi.Int(10000),
/// 				DispatcherSize:      pulumi.Int(5),
/// 				PageSize:            pulumi.Int(100),
/// 			},
/// 			Namespace: createNameSpace.NamespaceUid,
/// 			GroupId:   _default.GroupId,
/// 			JobType:   pulumi.String("java"),
/// 			JobMonitorInfo: &schedulerx.JobJobMonitorInfoArgs{
/// 				ContactInfos: schedulerx.JobJobMonitorInfoContactInfoArray{
/// 					&schedulerx.JobJobMonitorInfoContactInfoArgs{
/// 						UserPhone: pulumi.String("12345678910"),
/// 						UserName:  pulumi.String("tangtao-1"),
/// 						Ding:      pulumi.String("https://alidocs.dingtalk.com"),
/// 						UserMail:  pulumi.String("12345678@xx.com"),
/// 					},
/// 					&schedulerx.JobJobMonitorInfoContactInfoArgs{
/// 						UserPhone: pulumi.String("12345678910"),
/// 						UserName:  pulumi.String("tangtao-2"),
/// 						Ding:      pulumi.String("https://alidocs.dingtalk.com1"),
/// 						UserMail:  pulumi.String("123456789@xx.com"),
/// 					},
/// 				},
/// 				MonitorConfig: &schedulerx.JobJobMonitorInfoMonitorConfigArgs{
/// 					Timeout:           pulumi.Int(7200),
/// 					SendChannel:       pulumi.String("sms"),
/// 					TimeoutKillEnable: pulumi.Bool(true),
/// 					TimeoutEnable:     pulumi.Bool(true),
/// 					FailEnable:        pulumi.Bool(true),
/// 					MissWorkerEnable:  pulumi.Bool(true),
/// 				},
/// 			},
/// 			ClassName:       pulumi.String("com.aliyun.schedulerx.example.processor.SimpleJob"),
/// 			NamespaceSource: pulumi.String("schedulerx"),
/// 			AttemptInterval: pulumi.Int(30),
/// 			FailTimes:       pulumi.Int(1),
/// 			ExecuteMode:     pulumi.String("batch"),
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
/// import com.pulumi.alicloud.schedulerx.Namespace;
/// import com.pulumi.alicloud.schedulerx.NamespaceArgs;
/// import com.pulumi.alicloud.schedulerx.AppGroup;
/// import com.pulumi.alicloud.schedulerx.AppGroupArgs;
/// import com.pulumi.alicloud.schedulerx.Job;
/// import com.pulumi.alicloud.schedulerx.JobArgs;
/// import com.pulumi.alicloud.schedulerx.inputs.JobTimeConfigArgs;
/// import com.pulumi.alicloud.schedulerx.inputs.JobMapTaskXattrsArgs;
/// import com.pulumi.alicloud.schedulerx.inputs.JobJobMonitorInfoArgs;
/// import com.pulumi.alicloud.schedulerx.inputs.JobJobMonitorInfoMonitorConfigArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var createNameSpace = new Namespace("createNameSpace", NamespaceArgs.builder()
///             .namespaceName(name)
///             .description(name)
///             .build());
///
///         var default_ = new AppGroup("default", AppGroupArgs.builder()
///             .maxJobs(100)
///             .monitorContactsJson(serializeJson(
///                 jsonArray(
///                     jsonObject(
///                         jsonProperty("userName", "name1"),
///                         jsonProperty("userPhone", "89756******")
///                     ),
///                     jsonObject(
///                         jsonProperty("userName", "name2"),
///                         jsonProperty("ding", "http://www.example.com")
///                     )
///                 )))
///             .deleteJobs(false)
///             .appType(1)
///             .namespaceSource("schedulerx")
///             .groupId("example-appgroup-pop-autoexample")
///             .namespaceName("default")
///             .description(name)
///             .monitorConfigJson(serializeJson(
///                 jsonObject(
///                     jsonProperty("sendChannel", "sms,ding")
///                 )))
///             .appVersion("1")
///             .appName("example-appgroup-pop-autoexample")
///             .namespace(createNameSpace.namespaceUid())
///             .enableLog(false)
///             .scheduleBusyWorkers(false)
///             .build());
///
///         var defaultJob = new Job("defaultJob", JobArgs.builder()
///             .timezone("GTM+7")
///             .status("Enable")
///             .maxAttempt(0)
///             .description(name)
///             .parameters("hello word")
///             .jobName(name)
///             .maxConcurrency("1")
///             .timeConfig(JobTimeConfigArgs.builder()
///                 .dataOffset(1)
///                 .timeExpression("100000")
///                 .timeType(3)
///                 .calendar("workday")
///                 .build())
///             .mapTaskXattrs(JobMapTaskXattrsArgs.builder()
///                 .taskMaxAttempt(1)
///                 .taskAttemptInterval(1)
///                 .consumerSize(5)
///                 .queueSize(10000)
///                 .dispatcherSize(5)
///                 .pageSize(100)
///                 .build())
///             .namespace(createNameSpace.namespaceUid())
///             .groupId(default_.groupId())
///             .jobType("java")
///             .jobMonitorInfo(JobJobMonitorInfoArgs.builder()
///                 .contactInfos(
///                     JobJobMonitorInfoContactInfoArgs.builder()
///                         .userPhone("12345678910")
///                         .userName("tangtao-1")
///                         .ding("https://alidocs.dingtalk.com")
///                         .userMail("12345678@xx.com")
///                         .build(),
///                     JobJobMonitorInfoContactInfoArgs.builder()
///                         .userPhone("12345678910")
///                         .userName("tangtao-2")
///                         .ding("https://alidocs.dingtalk.com1")
///                         .userMail("123456789@xx.com")
///                         .build())
///                 .monitorConfig(JobJobMonitorInfoMonitorConfigArgs.builder()
///                     .timeout(7200)
///                     .sendChannel("sms")
///                     .timeoutKillEnable(true)
///                     .timeoutEnable(true)
///                     .failEnable(true)
///                     .missWorkerEnable(true)
///                     .build())
///                 .build())
///             .className("com.aliyun.schedulerx.example.processor.SimpleJob")
///             .namespaceSource("schedulerx")
///             .attemptInterval(30)
///             .failTimes(1)
///             .executeMode("batch")
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
///   createNameSpace:
///     type: alicloud:schedulerx:Namespace
///     name: CreateNameSpace
///     properties:
///       namespaceName: ${name}
///       description: ${name}
///   default:
///     type: alicloud:schedulerx:AppGroup
///     properties:
///       maxJobs: '100'
///       monitorContactsJson:
///         fn::toJSON:
///           - userName: name1
///             userPhone: 89756******
///           - userName: name2
///             ding: http://www.example.com
///       deleteJobs: 'false'
///       appType: '1'
///       namespaceSource: schedulerx
///       groupId: example-appgroup-pop-autoexample
///       namespaceName: default
///       description: ${name}
///       monitorConfigJson:
///         fn::toJSON:
///           sendChannel: sms,ding
///       appVersion: '1'
///       appName: example-appgroup-pop-autoexample
///       namespace: ${createNameSpace.namespaceUid}
///       enableLog: 'false'
///       scheduleBusyWorkers: 'false'
///   defaultJob:
///     type: alicloud:schedulerx:Job
///     name: default
///     properties:
///       timezone: GTM+7
///       status: Enable
///       maxAttempt: '0'
///       description: ${name}
///       parameters: hello word
///       jobName: ${name}
///       maxConcurrency: '1'
///       timeConfig:
///         dataOffset: '1'
///         timeExpression: '100000'
///         timeType: '3'
///         calendar: workday
///       mapTaskXattrs:
///         taskMaxAttempt: '1'
///         taskAttemptInterval: '1'
///         consumerSize: '5'
///         queueSize: '10000'
///         dispatcherSize: '5'
///         pageSize: '100'
///       namespace: ${createNameSpace.namespaceUid}
///       groupId: ${default.groupId}
///       jobType: java
///       jobMonitorInfo:
///         contactInfos:
///           - userPhone: '12345678910'
///             userName: tangtao-1
///             ding: https://alidocs.dingtalk.com
///             userMail: 12345678@xx.com
///           - userPhone: '12345678910'
///             userName: tangtao-2
///             ding: https://alidocs.dingtalk.com1
///             userMail: 123456789@xx.com
///         monitorConfig:
///           timeout: '7200'
///           sendChannel: sms
///           timeoutKillEnable: true
///           timeoutEnable: true
///           failEnable: true
///           missWorkerEnable: true
///       className: com.aliyun.schedulerx.example.processor.SimpleJob
///       namespaceSource: schedulerx
///       attemptInterval: '30'
///       failTimes: '1'
///       executeMode: batch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Schedulerx Job can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:schedulerx/job:Job example <namespace>:<group_id>:<job_id>
/// ```
class Job extends pulumi.CustomResource {
  /// Error retry interval, unit s, default value 30.
  late final pulumi.Output<int?> attemptInterval;

  /// Full path of the task interface class.
  ///
  /// This field is available only when your task is of the Java task type.
  late final pulumi.Output<String?> className;

  /// The script code of the python, shell, and go task types.
  late final pulumi.Output<String?> content;

  /// Task description.
  late final pulumi.Output<String?> description;

  /// Task execution mode, the possible results are as follows:
  late final pulumi.Output<String> executeMode;

  /// Number of consecutive failed alarms
  late final pulumi.Output<int?> failTimes;

  /// The application ID, which is obtained from the **application management** page of the console.
  late final pulumi.Output<String> groupId;

  /// JobId
  late final pulumi.Output<int> jobId;

  /// Task monitoring information See `job_monitor_info` below.
  late final pulumi.Output<JobJobMonitorInfo?> jobMonitorInfo;

  /// JobName
  late final pulumi.Output<String> jobName;

  /// Job Type
  late final pulumi.Output<String> jobType;

  /// Advanced configuration, limited to parallel computing, memory grid, and grid computing. See `map_task_xattrs` below.
  late final pulumi.Output<JobMapTaskXattrs?> mapTaskXattrs;

  /// The maximum number of error retries, which is set based on business requirements. The default value is 0.
  late final pulumi.Output<int?> maxAttempt;

  /// The maximum number of instances running at the same time. The default value is 1, that is, the last trigger is not completed, and the next trigger will not be performed even at the running time.
  late final pulumi.Output<String?> maxConcurrency;

  /// Namespace, which is obtained on the `Namespace` page of the console.
  late final pulumi.Output<String> namespace;

  /// Special third parties are required.
  late final pulumi.Output<String?> namespaceSource;

  /// User-defined parameters, which can be obtained at runtime.
  late final pulumi.Output<String?> parameters;

  /// Task status. The values are as follows:
  late final pulumi.Output<String> status;

  /// Success Notification Switch
  late final pulumi.Output<bool?> successNoticeEnable;

  /// Advanced configuration of parallel grid tasks, push model or pull model
  late final pulumi.Output<String?> taskDispatchMode;

  /// K8s task type custom task template
  late final pulumi.Output<String?> template;

  /// Time configuration information See `time_config` below.
  late final pulumi.Output<JobTimeConfig> timeConfig;

  /// Time Zone
  late final pulumi.Output<String?> timezone;

  /// Task Extension Field
  late final pulumi.Output<String> xAttrs;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_schedulerx_job_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(String name, {JobArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:schedulerx/job:Job',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    attemptInterval = registerOutput<int?>('attemptInterval');
    className = registerOutput<String?>('className');
    content = registerOutput<String?>('content');
    description = registerOutput<String?>('description');
    executeMode = registerOutput<String>('executeMode');
    failTimes = registerOutput<int?>('failTimes');
    groupId = registerOutput<String>('groupId');
    jobId = registerOutput<int>('jobId');
    jobMonitorInfo = registerOutput<JobJobMonitorInfo?>(
      'jobMonitorInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobJobMonitorInfo.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    jobName = registerOutput<String>('jobName');
    jobType = registerOutput<String>('jobType');
    mapTaskXattrs = registerOutput<JobMapTaskXattrs?>(
      'mapTaskXattrs',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobMapTaskXattrs.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    maxAttempt = registerOutput<int?>('maxAttempt');
    maxConcurrency = registerOutput<String?>('maxConcurrency');
    namespace = registerOutput<String>('namespace');
    namespaceSource = registerOutput<String?>('namespaceSource');
    parameters = registerOutput<String?>('parameters');
    status = registerOutput<String>('status');
    successNoticeEnable = registerOutput<bool?>('successNoticeEnable');
    taskDispatchMode = registerOutput<String?>('taskDispatchMode');
    template = registerOutput<String?>('template');
    timeConfig = registerOutput<JobTimeConfig>(
      'timeConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobTimeConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    timezone = registerOutput<String?>('timezone');
    xAttrs = registerOutput<String>('xAttrs');
  }

  /// Gets an existing [Job] resource's state with the given [name] and [id].
  static Job get(String name, pulumi.Input<String> id, {JobState? state}) {
    return Job._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Job._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:schedulerx/job:Job',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    attemptInterval = registerOutput<int?>('attemptInterval');
    className = registerOutput<String?>('className');
    content = registerOutput<String?>('content');
    description = registerOutput<String?>('description');
    executeMode = registerOutput<String>('executeMode');
    failTimes = registerOutput<int?>('failTimes');
    groupId = registerOutput<String>('groupId');
    jobId = registerOutput<int>('jobId');
    jobMonitorInfo = registerOutput<JobJobMonitorInfo?>(
      'jobMonitorInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobJobMonitorInfo.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    jobName = registerOutput<String>('jobName');
    jobType = registerOutput<String>('jobType');
    mapTaskXattrs = registerOutput<JobMapTaskXattrs?>(
      'mapTaskXattrs',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobMapTaskXattrs.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    maxAttempt = registerOutput<int?>('maxAttempt');
    maxConcurrency = registerOutput<String?>('maxConcurrency');
    namespace = registerOutput<String>('namespace');
    namespaceSource = registerOutput<String?>('namespaceSource');
    parameters = registerOutput<String?>('parameters');
    status = registerOutput<String>('status');
    successNoticeEnable = registerOutput<bool?>('successNoticeEnable');
    taskDispatchMode = registerOutput<String?>('taskDispatchMode');
    template = registerOutput<String?>('template');
    timeConfig = registerOutput<JobTimeConfig>(
      'timeConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobTimeConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    timezone = registerOutput<String?>('timezone');
    xAttrs = registerOutput<String>('xAttrs');
  }
}
