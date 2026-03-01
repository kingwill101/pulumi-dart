import 'package:pulumi/pulumi.dart' as pulumi;
import 'oss_export_args.dart';
import 'oss_export_config_column.dart';

/// Log service data delivery management, this service provides the function of delivering data in logstore to oss product storage. [Refer to details](https://www.alibabacloud.com/help/en/log-service/latest/ship-logs-to-oss-new-version).
///
/// > **NOTE:** This resource is no longer maintained. It is recommended to use the new resource alicloud_sls_oss_export_sink.
/// Refer to details.
///
/// > **NOTE:** Available since v1.187.0.
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
///
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const example = new alicloud.log.Project("example", {
///     projectName: `terraform-example-${_default.result}`,
///     description: "terraform-example",
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// const exampleStore = new alicloud.log.Store("example", {
///     projectName: example.projectName,
///     logstoreName: "example-store",
///     retentionPeriod: 3650,
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const exampleOssExport = new alicloud.log.OssExport("example", {
///     projectName: example.projectName,
///     logstoreName: exampleStore.logstoreName,
///     exportName: "terraform-example",
///     displayName: "terraform-example",
///     bucket: "example-bucket",
///     prefix: "root",
///     suffix: "",
///     bufferInterval: 300,
///     bufferSize: 250,
///     compressType: "none",
///     pathFormat: "%Y/%m/%d/%H/%M",
///     contentType: "json",
///     jsonEnableTag: true,
///     roleArn: "role_arn_for_oss_write",
///     logReadRoleArn: "role_arn_for_sls_read",
///     timeZone: "+0800",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// example = alicloud.log.Project("example",
///     project_name=f"terraform-example-{default['result']}",
///     description="terraform-example",
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// example_store = alicloud.log.Store("example",
///     project_name=example.project_name,
///     logstore_name="example-store",
///     retention_period=3650,
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// example_oss_export = alicloud.log.OssExport("example",
///     project_name=example.project_name,
///     logstore_name=example_store.logstore_name,
///     export_name="terraform-example",
///     display_name="terraform-example",
///     bucket="example-bucket",
///     prefix="root",
///     suffix="",
///     buffer_interval=300,
///     buffer_size=250,
///     compress_type="none",
///     path_format="%Y/%m/%d/%H/%M",
///     content_type="json",
///     json_enable_tag=True,
///     role_arn="role_arn_for_oss_write",
///     log_read_role_arn="role_arn_for_sls_read",
///     time_zone="+0800")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var example = new AliCloud.Log.Project("example", new()
///     {
///         ProjectName = $"terraform-example-{@default.Result}",
///         Description = "terraform-example",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
///     var exampleStore = new AliCloud.Log.Store("example", new()
///     {
///         ProjectName = example.ProjectName,
///         LogstoreName = "example-store",
///         RetentionPeriod = 3650,
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var exampleOssExport = new AliCloud.Log.OssExport("example", new()
///     {
///         ProjectName = example.ProjectName,
///         LogstoreName = exampleStore.LogstoreName,
///         ExportName = "terraform-example",
///         DisplayName = "terraform-example",
///         Bucket = "example-bucket",
///         Prefix = "root",
///         Suffix = "",
///         BufferInterval = 300,
///         BufferSize = 250,
///         CompressType = "none",
///         PathFormat = "%Y/%m/%d/%H/%M",
///         ContentType = "json",
///         JsonEnableTag = true,
///         RoleArn = "role_arn_for_oss_write",
///         LogReadRoleArn = "role_arn_for_sls_read",
///         TimeZone = "+0800",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := log.NewProject(ctx, "example", &log.ProjectArgs{
/// 			ProjectName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			Description: pulumi.String("terraform-example"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStore, err := log.NewStore(ctx, "example", &log.StoreArgs{
/// 			ProjectName:        example.ProjectName,
/// 			LogstoreName:       pulumi.String("example-store"),
/// 			RetentionPeriod:    pulumi.Int(3650),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewOssExport(ctx, "example", &log.OssExportArgs{
/// 			ProjectName:    example.ProjectName,
/// 			LogstoreName:   exampleStore.LogstoreName,
/// 			ExportName:     pulumi.String("terraform-example"),
/// 			DisplayName:    pulumi.String("terraform-example"),
/// 			Bucket:         pulumi.String("example-bucket"),
/// 			Prefix:         pulumi.String("root"),
/// 			Suffix:         pulumi.String(""),
/// 			BufferInterval: pulumi.Int(300),
/// 			BufferSize:     pulumi.Int(250),
/// 			CompressType:   pulumi.String("none"),
/// 			PathFormat:     pulumi.String("%Y/%m/%d/%H/%M"),
/// 			ContentType:    pulumi.String("json"),
/// 			JsonEnableTag:  pulumi.Bool(true),
/// 			RoleArn:        pulumi.String("role_arn_for_oss_write"),
/// 			LogReadRoleArn: pulumi.String("role_arn_for_sls_read"),
/// 			TimeZone:       pulumi.String("+0800"),
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
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.log.OssExport;
/// import com.pulumi.alicloud.log.OssExportArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var example = new Project("example", ProjectArgs.builder()
///             .projectName(String.format("terraform-example-%s", default_.result()))
///             .description("terraform-example")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///         var exampleStore = new Store("exampleStore", StoreArgs.builder()
///             .projectName(example.projectName())
///             .logstoreName("example-store")
///             .retentionPeriod(3650)
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var exampleOssExport = new OssExport("exampleOssExport", OssExportArgs.builder()
///             .projectName(example.projectName())
///             .logstoreName(exampleStore.logstoreName())
///             .exportName("terraform-example")
///             .displayName("terraform-example")
///             .bucket("example-bucket")
///             .prefix("root")
///             .suffix("")
///             .bufferInterval(300)
///             .bufferSize(250)
///             .compressType("none")
///             .pathFormat("%Y/%m/%d/%H/%M")
///             .contentType("json")
///             .jsonEnableTag(true)
///             .roleArn("role_arn_for_oss_write")
///             .logReadRoleArn("role_arn_for_sls_read")
///             .timeZone("+0800")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   example:
///     type: alicloud:log:Project
///     properties:
///       projectName: terraform-example-${default.result}
///       description: terraform-example
///       tags:
///         Created: TF
///         For: example
///   exampleStore:
///     type: alicloud:log:Store
///     name: example
///     properties:
///       projectName: ${example.projectName}
///       logstoreName: example-store
///       retentionPeriod: 3650
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   exampleOssExport:
///     type: alicloud:log:OssExport
///     name: example
///     properties:
///       projectName: ${example.projectName}
///       logstoreName: ${exampleStore.logstoreName}
///       exportName: terraform-example
///       displayName: terraform-example
///       bucket: example-bucket
///       prefix: root
///       suffix: ""
///       bufferInterval: 300
///       bufferSize: 250
///       compressType: none
///       pathFormat: '%Y/%m/%d/%H/%M'
///       contentType: json
///       jsonEnableTag: true
///       roleArn: role_arn_for_oss_write
///       logReadRoleArn: role_arn_for_sls_read
///       timeZone: '+0800'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log oss export can be imported using the id or name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/ossExport:OssExport example tf-log-project:tf-log-logstore:tf-log-export
/// ```
class OssExport extends pulumi.CustomResource {
  /// The name of the oss bucket.
  late final pulumi.Output<String> bucket;
  /// How often is it delivered every interval.
  late final pulumi.Output<int> bufferInterval;
  /// Automatically control the creation interval of delivery tasks and set the upper limit of an OSS object size (calculated in uncompressed), unit: `MB`.
  late final pulumi.Output<int> bufferSize;
  /// OSS data storage compression method, support: `none`, `snappy`, `zstd`, `gzip`. Among them, none means that the original data is not compressed, and snappy means that the data is compressed using the snappy algorithm, which can reduce the storage space usage of the `OSS Bucket`.
  late final pulumi.Output<String> compressType;
  /// Configure columns when `content_type` is `parquet` or `orc`.
  late final pulumi.Output<List<OssExportConfigColumn>?> configColumns;
  /// Storage format, only supports three types: `json`, `parquet`, `orc`, `csv`.
  /// **According to the different format, please select the following parameters**
  late final pulumi.Output<String> contentType;
  /// Field configuration in csv content_type.
  late final pulumi.Output<List<String>?> csvConfigColumns;
  /// Separator configuration in csv content_type.
  late final pulumi.Output<String?> csvConfigDelimiter;
  /// escape in csv content_type.
  late final pulumi.Output<String?> csvConfigEscape;
  /// Indicates whether to write the field name to the CSV file, the default value is `false`.
  late final pulumi.Output<bool?> csvConfigHeader;
  /// lineFeed in csv content_type.
  late final pulumi.Output<String?> csvConfigLinefeed;
  /// Invalid field content in csv content_type.
  late final pulumi.Output<String?> csvConfigNull;
  /// Escape character in csv content_type.
  late final pulumi.Output<String?> csvConfigQuote;
  /// The display name for oss export.
  late final pulumi.Output<String?> displayName;
  /// Delivery configuration name, it can only contain lowercase letters, numbers, dashes `-` and underscores `_`. It must start and end with lowercase letters or numbers, and the name must be 2 to 128 characters long.
  late final pulumi.Output<String> exportName;
  /// The log from when to export to oss.
  late final pulumi.Output<int?> fromTime;
  /// Whether to deliver the label when `content_type` = `json`.
  late final pulumi.Output<bool?> jsonEnableTag;
  /// Used for logstore reading, the role should have log read policy, such as `acs:ram::13234:role/logrole`, if `log_read_role_arn` is not set, `role_arn` is used to read logstore.
  late final pulumi.Output<String?> logReadRoleArn;
  /// The name of the log logstore.
  late final pulumi.Output<String> logstoreName;
  /// The OSS Bucket directory is dynamically generated according to the creation time of the export task, it cannot start with a forward slash `/`, the default value is `%Y/%m/%d/%H/%M`.
  late final pulumi.Output<String> pathFormat;
  /// The data synchronized from Log Service to OSS will be stored in this directory of Bucket.
  late final pulumi.Output<String?> prefix;
  /// The name of the log project. It is the only in one Alicloud account.
  late final pulumi.Output<String> projectName;
  /// Used to write to oss bucket, the OSS Bucket owner creates the role mark which has the oss bucket write policy, such as `acs:ram::13234:role/logrole`.
  late final pulumi.Output<String?> roleArn;
  /// The suffix for the objects in which the shipped data is stored.
  late final pulumi.Output<String?> suffix;
  /// This time zone that is used to format the time, `+0800` e.g.
  late final pulumi.Output<String> timeZone;

  /// Creates a new [OssExport].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OssExport]. {@macro pulumi_log_oss_export_oss_export_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OssExport(
    String name, {
    OssExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/ossExport:OssExport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.bufferInterval = registerOutput<int>('bufferInterval');
    this.bufferSize = registerOutput<int>('bufferSize');
    this.compressType = registerOutput<String>('compressType');
    this.configColumns = registerOutput<List<OssExportConfigColumn>?>('configColumns');
    this.contentType = registerOutput<String>('contentType');
    this.csvConfigColumns = registerOutput<List<String>?>('csvConfigColumns');
    this.csvConfigDelimiter = registerOutput<String?>('csvConfigDelimiter');
    this.csvConfigEscape = registerOutput<String?>('csvConfigEscape');
    this.csvConfigHeader = registerOutput<bool?>('csvConfigHeader');
    this.csvConfigLinefeed = registerOutput<String?>('csvConfigLinefeed');
    this.csvConfigNull = registerOutput<String?>('csvConfigNull');
    this.csvConfigQuote = registerOutput<String?>('csvConfigQuote');
    this.displayName = registerOutput<String?>('displayName');
    this.exportName = registerOutput<String>('exportName');
    this.fromTime = registerOutput<int?>('fromTime');
    this.jsonEnableTag = registerOutput<bool?>('jsonEnableTag');
    this.logReadRoleArn = registerOutput<String?>('logReadRoleArn');
    this.logstoreName = registerOutput<String>('logstoreName');
    this.pathFormat = registerOutput<String>('pathFormat');
    this.prefix = registerOutput<String?>('prefix');
    this.projectName = registerOutput<String>('projectName');
    this.roleArn = registerOutput<String?>('roleArn');
    this.suffix = registerOutput<String?>('suffix');
    this.timeZone = registerOutput<String>('timeZone');
  }
}
