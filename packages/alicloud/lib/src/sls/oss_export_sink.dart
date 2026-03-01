import 'package:pulumi/pulumi.dart' as pulumi;
import 'oss_export_sink_args.dart';
import 'oss_export_sink_configuration.dart';

/// Provides a Log Service (SLS) Oss Export Sink resource.
///
/// OSS export task.
///
/// For information about Log Service (SLS) Oss Export Sink and how to use it, see [What is Oss Export Sink](https://www.alibabacloud.com/help/en/sls/developer-reference/api-sls-2020-12-30-createossexport).
///
/// > **NOTE:** Available since v1.237.0.
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
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaulteyHJsO = new alicloud.log.Project("defaulteyHJsO", {
///     description: "terraform-oss-example-910",
///     projectName: std.format({
///         input: "%s1%s",
///         args: [
///             name,
///             _default.result,
///         ],
///     }).then(invoke => invoke.result),
/// });
/// const defaultxeHfXC = new alicloud.log.Store("defaultxeHfXC", {
///     hotTtl: 8,
///     retentionPeriod: 30,
///     shardCount: 2,
///     projectName: defaulteyHJsO.projectName,
///     logstoreName: std.format({
///         input: "%s1%s",
///         args: [
///             name,
///             _default.result,
///         ],
///     }).then(invoke => invoke.result),
/// });
/// const defaultiwj0xO = new alicloud.oss.Bucket("defaultiwj0xO", {
///     bucket: std.format({
///         input: "%s1%s",
///         args: [
///             name,
///             _default.result,
///         ],
///     }).then(invoke => invoke.result),
///     storageClass: "Standard",
/// });
/// const defaultOssExportSink = new alicloud.sls.OssExportSink("default", {
///     project: defaulteyHJsO.projectName,
///     configuration: {
///         logstore: defaultxeHfXC.logstoreName,
///         roleArn: "acs:ram::12345678901234567:role/aliyunlogdefaultrole",
///         sink: {
///             bucket: defaultiwj0xO.bucket,
///             roleArn: "acs:ram::12345678901234567:role/aliyunlogdefaultrole",
///             timeZone: "+0700",
///             contentType: "json",
///             compressionType: "none",
///             contentDetail: JSON.stringify({
///                 enableTag: false,
///             }),
///             bufferInterval: "300",
///             bufferSize: "256",
///             endpoint: "https://oss-cn-shanghai-internal.aliyuncs.com",
///         },
///         fromTime: 1732165733,
///         toTime: 1732166733,
///     },
///     jobName: "export-oss-1731404933-00001",
///     displayName: "exampleterraform",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// defaultey_hjs_o = alicloud.log.Project("defaulteyHJsO",
///     description="terraform-oss-example-910",
///     project_name=std.format(input="%s1%s",
///         args=[
///             name,
///             default["result"],
///         ]).result)
/// defaultxe_hf_xc = alicloud.log.Store("defaultxeHfXC",
///     hot_ttl=8,
///     retention_period=30,
///     shard_count=2,
///     project_name=defaultey_hjs_o.project_name,
///     logstore_name=std.format(input="%s1%s",
///         args=[
///             name,
///             default["result"],
///         ]).result)
/// defaultiwj0x_o = alicloud.oss.Bucket("defaultiwj0xO",
///     bucket=std.format(input="%s1%s",
///         args=[
///             name,
///             default["result"],
///         ]).result,
///     storage_class="Standard")
/// default_oss_export_sink = alicloud.sls.OssExportSink("default",
///     project=defaultey_hjs_o.project_name,
///     configuration={
///         "logstore": defaultxe_hf_xc.logstore_name,
///         "role_arn": "acs:ram::12345678901234567:role/aliyunlogdefaultrole",
///         "sink": {
///             "bucket": defaultiwj0x_o.bucket,
///             "role_arn": "acs:ram::12345678901234567:role/aliyunlogdefaultrole",
///             "time_zone": "+0700",
///             "content_type": "json",
///             "compression_type": "none",
///             "content_detail": json.dumps({
///                 "enableTag": False,
///             }),
///             "buffer_interval": "300",
///             "buffer_size": "256",
///             "endpoint": "https://oss-cn-shanghai-internal.aliyuncs.com",
///         },
///         "from_time": 1732165733,
///         "to_time": 1732166733,
///     },
///     job_name="export-oss-1731404933-00001",
///     display_name="exampleterraform")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaulteyHJsO = new AliCloud.Log.Project("defaulteyHJsO", new()
///     {
///         Description = "terraform-oss-example-910",
///         ProjectName = Std.Format.Invoke(new()
///         {
///             Input = "%s1%s",
///             Args = new[]
///             {
///                 name,
///                 @default.Result,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var defaultxeHfXC = new AliCloud.Log.Store("defaultxeHfXC", new()
///     {
///         HotTtl = 8,
///         RetentionPeriod = 30,
///         ShardCount = 2,
///         ProjectName = defaulteyHJsO.ProjectName,
///         LogstoreName = Std.Format.Invoke(new()
///         {
///             Input = "%s1%s",
///             Args = new[]
///             {
///                 name,
///                 @default.Result,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var defaultiwj0xO = new AliCloud.Oss.Bucket("defaultiwj0xO", new()
///     {
///         BucketName = Std.Format.Invoke(new()
///         {
///             Input = "%s1%s",
///             Args = new[]
///             {
///                 name,
///                 @default.Result,
///             },
///         }).Apply(invoke => invoke.Result),
///         StorageClass = "Standard",
///     });
///
///     var defaultOssExportSink = new AliCloud.Sls.OssExportSink("default", new()
///     {
///         Project = defaulteyHJsO.ProjectName,
///         Configuration = new AliCloud.Sls.Inputs.OssExportSinkConfigurationArgs
///         {
///             Logstore = defaultxeHfXC.LogstoreName,
///             RoleArn = "acs:ram::12345678901234567:role/aliyunlogdefaultrole",
///             Sink = new AliCloud.Sls.Inputs.OssExportSinkConfigurationSinkArgs
///             {
///                 Bucket = defaultiwj0xO.BucketName,
///                 RoleArn = "acs:ram::12345678901234567:role/aliyunlogdefaultrole",
///                 TimeZone = "+0700",
///                 ContentType = "json",
///                 CompressionType = "none",
///                 ContentDetail = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["enableTag"] = false,
///                 }),
///                 BufferInterval = "300",
///                 BufferSize = "256",
///                 Endpoint = "https://oss-cn-shanghai-internal.aliyuncs.com",
///             },
///             FromTime = 1732165733,
///             ToTime = 1732166733,
///         },
///         JobName = "export-oss-1731404933-00001",
///         DisplayName = "exampleterraform",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sls"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1%s",
/// 			Args: []interface{}{
/// 				name,
/// 				_default.Result,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaulteyHJsO, err := log.NewProject(ctx, "defaulteyHJsO", &log.ProjectArgs{
/// 			Description: pulumi.String("terraform-oss-example-910"),
/// 			ProjectName: pulumi.String(invokeFormat.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1%s",
/// 			Args: []interface{}{
/// 				name,
/// 				_default.Result,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultxeHfXC, err := log.NewStore(ctx, "defaultxeHfXC", &log.StoreArgs{
/// 			HotTtl:          pulumi.Int(8),
/// 			RetentionPeriod: pulumi.Int(30),
/// 			ShardCount:      pulumi.Int(2),
/// 			ProjectName:     defaulteyHJsO.ProjectName,
/// 			LogstoreName:    pulumi.String(invokeFormat1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat2, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1%s",
/// 			Args: []interface{}{
/// 				name,
/// 				_default.Result,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultiwj0xO, err := oss.NewBucket(ctx, "defaultiwj0xO", &oss.BucketArgs{
/// 			Bucket:       pulumi.String(invokeFormat2.Result),
/// 			StorageClass: pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"enableTag": false,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = sls.NewOssExportSink(ctx, "default", &sls.OssExportSinkArgs{
/// 			Project: defaulteyHJsO.ProjectName,
/// 			Configuration: &sls.OssExportSinkConfigurationArgs{
/// 				Logstore: defaultxeHfXC.LogstoreName,
/// 				RoleArn:  pulumi.String("acs:ram::12345678901234567:role/aliyunlogdefaultrole"),
/// 				Sink: &sls.OssExportSinkConfigurationSinkArgs{
/// 					Bucket:          defaultiwj0xO.Bucket,
/// 					RoleArn:         pulumi.String("acs:ram::12345678901234567:role/aliyunlogdefaultrole"),
/// 					TimeZone:        pulumi.String("+0700"),
/// 					ContentType:     pulumi.String("json"),
/// 					CompressionType: pulumi.String("none"),
/// 					ContentDetail:   pulumi.String(json0),
/// 					BufferInterval:  pulumi.String("300"),
/// 					BufferSize:      pulumi.String("256"),
/// 					Endpoint:        pulumi.String("https://oss-cn-shanghai-internal.aliyuncs.com"),
/// 				},
/// 				FromTime: pulumi.Int(1732165733),
/// 				ToTime:   pulumi.Int(1732166733),
/// 			},
/// 			JobName:     pulumi.String("export-oss-1731404933-00001"),
/// 			DisplayName: pulumi.String("exampleterraform"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.sls.OssExportSink;
/// import com.pulumi.alicloud.sls.OssExportSinkArgs;
/// import com.pulumi.alicloud.sls.inputs.OssExportSinkConfigurationArgs;
/// import com.pulumi.alicloud.sls.inputs.OssExportSinkConfigurationSinkArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaulteyHJsO = new Project("defaulteyHJsO", ProjectArgs.builder()
///             .description("terraform-oss-example-910")
///             .projectName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1%s")
///                 .args(
///                     name,
///                     default_.result())
///                 .build()).result())
///             .build());
///
///         var defaultxeHfXC = new Store("defaultxeHfXC", StoreArgs.builder()
///             .hotTtl(8)
///             .retentionPeriod(30)
///             .shardCount(2)
///             .projectName(defaulteyHJsO.projectName())
///             .logstoreName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1%s")
///                 .args(
///                     name,
///                     default_.result())
///                 .build()).result())
///             .build());
///
///         var defaultiwj0xO = new Bucket("defaultiwj0xO", BucketArgs.builder()
///             .bucket(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1%s")
///                 .args(
///                     name,
///                     default_.result())
///                 .build()).result())
///             .storageClass("Standard")
///             .build());
///
///         var defaultOssExportSink = new OssExportSink("defaultOssExportSink", OssExportSinkArgs.builder()
///             .project(defaulteyHJsO.projectName())
///             .configuration(OssExportSinkConfigurationArgs.builder()
///                 .logstore(defaultxeHfXC.logstoreName())
///                 .roleArn("acs:ram::12345678901234567:role/aliyunlogdefaultrole")
///                 .sink(OssExportSinkConfigurationSinkArgs.builder()
///                     .bucket(defaultiwj0xO.bucket())
///                     .roleArn("acs:ram::12345678901234567:role/aliyunlogdefaultrole")
///                     .timeZone("+0700")
///                     .contentType("json")
///                     .compressionType("none")
///                     .contentDetail(serializeJson(
///                         jsonObject(
///                             jsonProperty("enableTag", false)
///                         )))
///                     .bufferInterval("300")
///                     .bufferSize("256")
///                     .endpoint("https://oss-cn-shanghai-internal.aliyuncs.com")
///                     .build())
///                 .fromTime(1732165733)
///                 .toTime(1732166733)
///                 .build())
///             .jobName("export-oss-1731404933-00001")
///             .displayName("exampleterraform")
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
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaulteyHJsO:
///     type: alicloud:log:Project
///     properties:
///       description: terraform-oss-example-910
///       projectName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1%s'
///             args:
///               - ${name}
///               - ${default.result}
///           return: result
///   defaultxeHfXC:
///     type: alicloud:log:Store
///     properties:
///       hotTtl: '8'
///       retentionPeriod: '30'
///       shardCount: '2'
///       projectName: ${defaulteyHJsO.projectName}
///       logstoreName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1%s'
///             args:
///               - ${name}
///               - ${default.result}
///           return: result
///   defaultiwj0xO:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1%s'
///             args:
///               - ${name}
///               - ${default.result}
///           return: result
///       storageClass: Standard
///   defaultOssExportSink:
///     type: alicloud:sls:OssExportSink
///     name: default
///     properties:
///       project: ${defaulteyHJsO.projectName}
///       configuration:
///         logstore: ${defaultxeHfXC.logstoreName}
///         roleArn: acs:ram::12345678901234567:role/aliyunlogdefaultrole
///         sink:
///           bucket: ${defaultiwj0xO.bucket}
///           roleArn: acs:ram::12345678901234567:role/aliyunlogdefaultrole
///           timeZone: '+0700'
///           contentType: json
///           compressionType: none
///           contentDetail:
///             fn::toJSON:
///               enableTag: false
///           bufferInterval: '300'
///           bufferSize: '256'
///           endpoint: https://oss-cn-shanghai-internal.aliyuncs.com
///         fromTime: '1732165733'
///         toTime: '1732166733'
///       jobName: export-oss-1731404933-00001
///       displayName: exampleterraform
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log Service (SLS) Oss Export Sink can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sls/ossExportSink:OssExportSink example <project>:<job_name>
/// ```
class OssExportSink extends pulumi.CustomResource {
  /// OSSExportConfiguration See `configuration` below.
  late final pulumi.Output<OssExportSinkConfiguration> configuration;
  /// Creation time. Example value: 1718787534
  late final pulumi.Output<int> createTime;
  /// The description of the job.
  late final pulumi.Output<String?> description;
  /// The display name of the job.
  late final pulumi.Output<String> displayName;
  /// The unique identifier of the OSS data shipping job.
  late final pulumi.Output<String> jobName;
  /// The name of the project.
  late final pulumi.Output<String> project;
  /// The status of the post task. Example value: RUNNING
  late final pulumi.Output<String> status;

  /// Creates a new [OssExportSink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OssExportSink]. {@macro pulumi_sls_oss_export_sink_oss_export_sink_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OssExportSink(
    String name, {
    OssExportSinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sls/ossExportSink:OssExportSink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configuration = registerOutput<OssExportSinkConfiguration>('configuration');
    this.createTime = registerOutput<int>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.jobName = registerOutput<String>('jobName');
    this.project = registerOutput<String>('project');
    this.status = registerOutput<String>('status');
  }
}
