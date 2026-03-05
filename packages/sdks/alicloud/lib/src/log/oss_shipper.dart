import 'package:pulumi/pulumi.dart' as pulumi;
import 'oss_shipper_args.dart';
import 'oss_shipper_state.dart';

/// Log service data delivery management, this service provides the function of delivering data in logstore to oss product storage.
/// [Refer to details](https://www.alibabacloud.com/help/en/doc-detail/43724.htm).
///
/// &gt; **NOTE:** Available since v1.121.0.
///
/// &gt; **DEPRECATED:**  This resource has been deprecated from version `1.215.0`. Please use new resource alicloud_log_oss_export.
///
///
/// ## Example Usage
///
/// Basic Usage
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
///     name: `terraform-example-${_default.result}`,
///     description: "terraform-example",
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// const exampleStore = new alicloud.log.Store("example", {
///     project: example.name,
///     name: "example-store",
///     retentionPeriod: 3650,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const exampleOssShipper = new alicloud.log.OssShipper("example", {
///     projectName: example.name,
///     logstoreName: exampleStore.name,
///     shipperName: "terraform-example",
///     ossBucket: "example_bucket",
///     ossPrefix: "root",
///     bufferInterval: 300,
///     bufferSize: 250,
///     compressType: "none",
///     pathFormat: "%Y/%m/%d/%H/%M",
///     format: "json",
///     jsonEnableTag: true,
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
///     name=f"terraform-example-{default['result']}",
///     description="terraform-example",
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// example_store = alicloud.log.Store("example",
///     project=example.name,
///     name="example-store",
///     retention_period=3650,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// example_oss_shipper = alicloud.log.OssShipper("example",
///     project_name=example.name,
///     logstore_name=example_store.name,
///     shipper_name="terraform-example",
///     oss_bucket="example_bucket",
///     oss_prefix="root",
///     buffer_interval=300,
///     buffer_size=250,
///     compress_type="none",
///     path_format="%Y/%m/%d/%H/%M",
///     format="json",
///     json_enable_tag=True)
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
///         Name = $"terraform-example-{@default.Result}",
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
///         Project = example.Name,
///         Name = "example-store",
///         RetentionPeriod = 3650,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var exampleOssShipper = new AliCloud.Log.OssShipper("example", new()
///     {
///         ProjectName = example.Name,
///         LogstoreName = exampleStore.Name,
///         ShipperName = "terraform-example",
///         OssBucket = "example_bucket",
///         OssPrefix = "root",
///         BufferInterval = 300,
///         BufferSize = 250,
///         CompressType = "none",
///         PathFormat = "%Y/%m/%d/%H/%M",
///         Format = "json",
///         JsonEnableTag = true,
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
/// 			Name:        pulumi.Sprintf("terraform-example-%v", _default.Result),
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
/// 			Project:            example.Name,
/// 			Name:               pulumi.String("example-store"),
/// 			RetentionPeriod:    pulumi.Int(3650),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewOssShipper(ctx, "example", &log.OssShipperArgs{
/// 			ProjectName:    example.Name,
/// 			LogstoreName:   exampleStore.Name,
/// 			ShipperName:    pulumi.String("terraform-example"),
/// 			OssBucket:      pulumi.String("example_bucket"),
/// 			OssPrefix:      pulumi.String("root"),
/// 			BufferInterval: pulumi.Int(300),
/// 			BufferSize:     pulumi.Int(250),
/// 			CompressType:   pulumi.String("none"),
/// 			PathFormat:     pulumi.String("%Y/%m/%d/%H/%M"),
/// 			Format:         pulumi.String("json"),
/// 			JsonEnableTag:  pulumi.Bool(true),
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
/// import com.pulumi.alicloud.log.OssShipper;
/// import com.pulumi.alicloud.log.OssShipperArgs;
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
///             .name(String.format("terraform-example-%s", default_.result()))
///             .description("terraform-example")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///         var exampleStore = new Store("exampleStore", StoreArgs.builder()
///             .project(example.name())
///             .name("example-store")
///             .retentionPeriod(3650)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var exampleOssShipper = new OssShipper("exampleOssShipper", OssShipperArgs.builder()
///             .projectName(example.name())
///             .logstoreName(exampleStore.name())
///             .shipperName("terraform-example")
///             .ossBucket("example_bucket")
///             .ossPrefix("root")
///             .bufferInterval(300)
///             .bufferSize(250)
///             .compressType("none")
///             .pathFormat("%Y/%m/%d/%H/%M")
///             .format("json")
///             .jsonEnableTag(true)
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
///       name: terraform-example-${default.result}
///       description: terraform-example
///       tags:
///         Created: TF
///         For: example
///   exampleStore:
///     type: alicloud:log:Store
///     name: example
///     properties:
///       project: ${example.name}
///       name: example-store
///       retentionPeriod: 3650
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   exampleOssShipper:
///     type: alicloud:log:OssShipper
///     name: example
///     properties:
///       projectName: ${example.name}
///       logstoreName: ${exampleStore.name}
///       shipperName: terraform-example
///       ossBucket: example_bucket
///       ossPrefix: root
///       bufferInterval: 300
///       bufferSize: 250
///       compressType: none
///       pathFormat: '%Y/%m/%d/%H/%M'
///       format: json
///       jsonEnableTag: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log oss shipper can be imported using the id or name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/ossShipper:OssShipper example tf-log-project:tf-log-logstore:tf-log-shipper
/// ```
class OssShipper extends pulumi.CustomResource {
  /// How often is it delivered every interval.
  late final pulumi.Output<int> bufferInterval;
  /// Automatically control the creation interval of delivery tasks and set the upper limit of an OSS object size (calculated in uncompressed), unit: `MB`.
  late final pulumi.Output<int> bufferSize;
  /// OSS data storage compression method, support: none, snappy. Among them, none means that the original data is not compressed, and snappy means that the data is compressed using the snappy algorithm, which can reduce the storage space usage of the `OSS Bucket`.
  late final pulumi.Output<String?> compressType;
  late final pulumi.Output<List<String>?> csvConfigColumns;
  late final pulumi.Output<String?> csvConfigDelimiter;
  late final pulumi.Output<bool?> csvConfigHeader;
  late final pulumi.Output<String?> csvConfigLinefeed;
  late final pulumi.Output<String?> csvConfigNullidentifier;
  late final pulumi.Output<String?> csvConfigQuote;
  /// Storage format, only supports three types: `json`, `parquet`, `csv`.
  /// **According to the different format, please select the following parameters**
  /// - format = `json`
  /// `json_enable_tag` - (Optional) Whether to deliver the label.
  /// - format = `csv`
  /// `csv_config_delimiter` - (Optional) Separator configuration in csv configuration format.
  /// `csv_config_columns` - (Optional) Field configuration in csv configuration format.
  /// `csv_config_nullidentifier` - (Optional) Invalid field content.
  /// `csv_config_quote` - (Optional) Escape character under csv configuration.
  /// `csv_config_header` - (Optional) Indicates whether to write the field name to the CSV file, the default value is `false`.
  /// `csv_config_linefeed` - (Optional) lineFeed in csv configuration.
  /// - format = `parquet`
  /// `parquet_config` - (Optional) Configure to use parquet storage format.
  /// `name` - (Required) The name of the key.
  /// `type` - (Required) Type of configuration name.
  late final pulumi.Output<String> format;
  late final pulumi.Output<bool?> jsonEnableTag;
  /// The name of the log logstore.
  late final pulumi.Output<String> logstoreName;
  /// The name of the oss bucket.
  late final pulumi.Output<String> ossBucket;
  /// The data synchronized from Log Service to OSS will be stored in this directory of Bucket.
  late final pulumi.Output<String?> ossPrefix;
  late final pulumi.Output<List<Map<String, dynamic>>?> parquetConfigs;
  /// The OSS Bucket directory is dynamically generated according to the creation time of the shipper task, it cannot start with a forward slash `/`, the default value is `%Y/%m/%d/%H/%M`.
  late final pulumi.Output<String> pathFormat;
  /// The name of the log project. It is the only in one Alicloud account.
  late final pulumi.Output<String> projectName;
  /// Used for access control, the OSS Bucket owner creates the role mark, such as `acs:ram::13234:role/logrole`
  late final pulumi.Output<String?> roleArn;
  /// Delivery configuration name, it can only contain lowercase letters, numbers, dashes `-` and underscores `_`. It must start and end with lowercase letters or numbers, and the name must be 2 to 128 characters long.
  late final pulumi.Output<String> shipperName;

  /// Creates a new [OssShipper].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OssShipper]. {@macro pulumi_log_oss_shipper_oss_shipper_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OssShipper(
    String name, {
    OssShipperArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/ossShipper:OssShipper',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bufferInterval = registerOutput<int>('bufferInterval');
    bufferSize = registerOutput<int>('bufferSize');
    compressType = registerOutput<String?>('compressType');
    csvConfigColumns = registerOutput<List<String>?>('csvConfigColumns');
    csvConfigDelimiter = registerOutput<String?>('csvConfigDelimiter');
    csvConfigHeader = registerOutput<bool?>('csvConfigHeader');
    csvConfigLinefeed = registerOutput<String?>('csvConfigLinefeed');
    csvConfigNullidentifier = registerOutput<String?>('csvConfigNullidentifier');
    csvConfigQuote = registerOutput<String?>('csvConfigQuote');
    format = registerOutput<String>('format');
    jsonEnableTag = registerOutput<bool?>('jsonEnableTag');
    logstoreName = registerOutput<String>('logstoreName');
    ossBucket = registerOutput<String>('ossBucket');
    ossPrefix = registerOutput<String?>('ossPrefix');
    parquetConfigs = registerOutput<List<Map<String, dynamic>>?>('parquetConfigs');
    pathFormat = registerOutput<String>('pathFormat');
    projectName = registerOutput<String>('projectName');
    roleArn = registerOutput<String?>('roleArn');
    shipperName = registerOutput<String>('shipperName');
  }

  /// Gets an existing [OssShipper] resource's state with the given [name] and [id].
  static OssShipper get(
    String name,
    pulumi.Input<String> id, {
    OssShipperState? state,
  }) {
    return OssShipper._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OssShipper._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/ossShipper:OssShipper',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bufferInterval = registerOutput<int>('bufferInterval');
    bufferSize = registerOutput<int>('bufferSize');
    compressType = registerOutput<String?>('compressType');
    csvConfigColumns = registerOutput<List<String>?>('csvConfigColumns');
    csvConfigDelimiter = registerOutput<String?>('csvConfigDelimiter');
    csvConfigHeader = registerOutput<bool?>('csvConfigHeader');
    csvConfigLinefeed = registerOutput<String?>('csvConfigLinefeed');
    csvConfigNullidentifier = registerOutput<String?>('csvConfigNullidentifier');
    csvConfigQuote = registerOutput<String?>('csvConfigQuote');
    format = registerOutput<String>('format');
    jsonEnableTag = registerOutput<bool?>('jsonEnableTag');
    logstoreName = registerOutput<String>('logstoreName');
    ossBucket = registerOutput<String>('ossBucket');
    ossPrefix = registerOutput<String?>('ossPrefix');
    parquetConfigs = registerOutput<List<Map<String, dynamic>>?>('parquetConfigs');
    pathFormat = registerOutput<String>('pathFormat');
    projectName = registerOutput<String>('projectName');
    roleArn = registerOutput<String?>('roleArn');
    shipperName = registerOutput<String>('shipperName');
  }
}
