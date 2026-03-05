import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_args.dart';
import 'ingestion_state.dart';

/// Log service ingestion, this service provides the function of importing logs of various data sources(OSS, MaxCompute) into logstore. [Refer to details](https://www.alibabacloud.com/help/en/doc-detail/147819.html).
///
/// &gt; **NOTE:** Available since v1.161.0.
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
/// const exampleIngestion = new alicloud.log.Ingestion("example", {
///     project: example.projectName,
///     logstore: exampleStore.logstoreName,
///     ingestionName: "terraform-example",
///     displayName: "terraform-example",
///     description: "terraform-example",
///     interval: "30m",
///     runImmediately: true,
///     timeZone: "+0800",
///     source: `        {
///           \\"bucket\\": \\"bucket_name\\",
///           \\"compressionCodec\\": \\"none\\",
///           \\"encoding\\": \\"UTF-8\\",
///           \\"endpoint\\": \\"oss-cn-hangzhou-internal.aliyuncs.com\\",
///           \\"format\\": {
///             \\"escapeChar\\": \\"\\\\\\\\\\",
///             \\"fieldDelimiter\\": \\",\\",
///             \\"fieldNames\\": [],
///             \\"firstRowAsHeader\\": true,
///             \\"maxLines\\": 1,
///             \\"quoteChar\\": \\"\\\\\\"\\",
///             \\"skipLeadingRows\\": 0,
///             \\"timeField\\": \\"\\",
///             \\"type\\": \\"DelimitedText\\"
///           },
///           \\"pattern\\": \\"\\",
///           \\"prefix\\": \\"test-prefix/\\",
///           \\"restoreObjectEnabled\\": false,
///           \\"roleARN\\": \\"acs:ram::1049446484210612:role/aliyunlogimportossrole\\",
///           \\"type\\": \\"AliyunOSS\\"
///         }
/// `,
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
/// example_ingestion = alicloud.log.Ingestion("example",
///     project=example.project_name,
///     logstore=example_store.logstore_name,
///     ingestion_name="terraform-example",
///     display_name="terraform-example",
///     description="terraform-example",
///     interval="30m",
///     run_immediately=True,
///     time_zone="+0800",
///     source="""        {
///           \"bucket\": \"bucket_name\",
///           \"compressionCodec\": \"none\",
///           \"encoding\": \"UTF-8\",
///           \"endpoint\": \"oss-cn-hangzhou-internal.aliyuncs.com\",
///           \"format\": {
///             \"escapeChar\": \"\\\\\",
///             \"fieldDelimiter\": \",\",
///             \"fieldNames\": [],
///             \"firstRowAsHeader\": true,
///             \"maxLines\": 1,
///             \"quoteChar\": \"\\\"\",
///             \"skipLeadingRows\": 0,
///             \"timeField\": \"\",
///             \"type\": \"DelimitedText\"
///           },
///           \"pattern\": \"\",
///           \"prefix\": \"test-prefix/\",
///           \"restoreObjectEnabled\": false,
///           \"roleARN\": \"acs:ram::1049446484210612:role/aliyunlogimportossrole\",
///           \"type\": \"AliyunOSS\"
///         }
/// """)
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
///     var exampleIngestion = new AliCloud.Log.Ingestion("example", new()
///     {
///         Project = example.ProjectName,
///         Logstore = exampleStore.LogstoreName,
///         IngestionName = "terraform-example",
///         DisplayName = "terraform-example",
///         Description = "terraform-example",
///         Interval = "30m",
///         RunImmediately = true,
///         TimeZone = "+0800",
///         Source = @"        {
///           \""bucket\"": \""bucket_name\"",
///           \""compressionCodec\"": \""none\"",
///           \""encoding\"": \""UTF-8\"",
///           \""endpoint\"": \""oss-cn-hangzhou-internal.aliyuncs.com\"",
///           \""format\"": {
///             \""escapeChar\"": \""\\\\\"",
///             \""fieldDelimiter\"": \"",\"",
///             \""fieldNames\"": [],
///             \""firstRowAsHeader\"": true,
///             \""maxLines\"": 1,
///             \""quoteChar\"": \""\\\""\"",
///             \""skipLeadingRows\"": 0,
///             \""timeField\"": \""\"",
///             \""type\"": \""DelimitedText\""
///           },
///           \""pattern\"": \""\"",
///           \""prefix\"": \""test-prefix/\"",
///           \""restoreObjectEnabled\"": false,
///           \""roleARN\"": \""acs:ram::1049446484210612:role/aliyunlogimportossrole\"",
///           \""type\"": \""AliyunOSS\""
///         }
/// ",
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
/// 		_, err = log.NewIngestion(ctx, "example", &log.IngestionArgs{
/// 			Project:        example.ProjectName,
/// 			Logstore:       exampleStore.LogstoreName,
/// 			IngestionName:  pulumi.String("terraform-example"),
/// 			DisplayName:    pulumi.String("terraform-example"),
/// 			Description:    pulumi.String("terraform-example"),
/// 			Interval:       pulumi.String("30m"),
/// 			RunImmediately: pulumi.Bool(true),
/// 			TimeZone:       pulumi.String("+0800"),
/// 			Source: pulumi.String(`        {
///           \"bucket\": \"bucket_name\",
///           \"compressionCodec\": \"none\",
///           \"encoding\": \"UTF-8\",
///           \"endpoint\": \"oss-cn-hangzhou-internal.aliyuncs.com\",
///           \"format\": {
///             \"escapeChar\": \"\\\\\",
///             \"fieldDelimiter\": \",\",
///             \"fieldNames\": [],
///             \"firstRowAsHeader\": true,
///             \"maxLines\": 1,
///             \"quoteChar\": \"\\\"\",
///             \"skipLeadingRows\": 0,
///             \"timeField\": \"\",
///             \"type\": \"DelimitedText\"
///           },
///           \"pattern\": \"\",
///           \"prefix\": \"test-prefix/\",
///           \"restoreObjectEnabled\": false,
///           \"roleARN\": \"acs:ram::1049446484210612:role/aliyunlogimportossrole\",
///           \"type\": \"AliyunOSS\"
///         }
/// `),
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
/// import com.pulumi.alicloud.log.Ingestion;
/// import com.pulumi.alicloud.log.IngestionArgs;
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
///         var exampleIngestion = new Ingestion("exampleIngestion", IngestionArgs.builder()
///             .project(example.projectName())
///             .logstore(exampleStore.logstoreName())
///             .ingestionName("terraform-example")
///             .displayName("terraform-example")
///             .description("terraform-example")
///             .interval("30m")
///             .runImmediately(true)
///             .timeZone("+0800")
///             .source("""
///         {
///           \"bucket\": \"bucket_name\",
///           \"compressionCodec\": \"none\",
///           \"encoding\": \"UTF-8\",
///           \"endpoint\": \"oss-cn-hangzhou-internal.aliyuncs.com\",
///           \"format\": {
///             \"escapeChar\": \"\\\\\",
///             \"fieldDelimiter\": \",\",
///             \"fieldNames\": [],
///             \"firstRowAsHeader\": true,
///             \"maxLines\": 1,
///             \"quoteChar\": \"\\\"\",
///             \"skipLeadingRows\": 0,
///             \"timeField\": \"\",
///             \"type\": \"DelimitedText\"
///           },
///           \"pattern\": \"\",
///           \"prefix\": \"test-prefix/\",
///           \"restoreObjectEnabled\": false,
///           \"roleARN\": \"acs:ram::1049446484210612:role/aliyunlogimportossrole\",
///           \"type\": \"AliyunOSS\"
///         }
///             """)
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
///   exampleIngestion:
///     type: alicloud:log:Ingestion
///     name: example
///     properties:
///       project: ${example.projectName}
///       logstore: ${exampleStore.logstoreName}
///       ingestionName: terraform-example
///       displayName: terraform-example
///       description: terraform-example
///       interval: 30m
///       runImmediately: true
///       timeZone: '+0800'
///       source: |2
///                 {
///                   \"bucket\": \"bucket_name\",
///                   \"compressionCodec\": \"none\",
///                   \"encoding\": \"UTF-8\",
///                   \"endpoint\": \"oss-cn-hangzhou-internal.aliyuncs.com\",
///                   \"format\": {
///                     \"escapeChar\": \"\\\\\",
///                     \"fieldDelimiter\": \",\",
///                     \"fieldNames\": [],
///                     \"firstRowAsHeader\": true,
///                     \"maxLines\": 1,
///                     \"quoteChar\": \"\\\"\",
///                     \"skipLeadingRows\": 0,
///                     \"timeField\": \"\",
///                     \"type\": \"DelimitedText\"
///                   },
///                   \"pattern\": \"\",
///                   \"prefix\": \"test-prefix/\",
///                   \"restoreObjectEnabled\": false,
///                   \"roleARN\": \"acs:ram::1049446484210612:role/aliyunlogimportossrole\",
///                   \"type\": \"AliyunOSS\"
///                 }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log ingestion can be imported using the id or name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/ingestion:Ingestion example tf-log-project:tf-log-logstore:ingestion_name
/// ```
class Ingestion extends pulumi.CustomResource {
  /// Ingestion job description.
  late final pulumi.Output<String?> description;
  /// The name displayed on the web page.
  late final pulumi.Output<String> displayName;
  /// Ingestion job name, it can only contain lowercase letters, numbers, dashes `-` and underscores `_`. It must start and end with lowercase letters or numbers, and the name must be 2 to 128 characters long.
  late final pulumi.Output<String> ingestionName;
  /// Task execution interval, support minute `m`, hour `h`, day `d`, for example 30 minutes `30m`.
  late final pulumi.Output<String> interval;
  /// The name of the target logstore.
  late final pulumi.Output<String> logstore;
  /// The name of the log project. It is the only in one Alicloud account.
  late final pulumi.Output<String> project;
  /// Whether to run the ingestion job immediately, if false, wait for an interval before starting the ingestion.
  late final pulumi.Output<bool> runImmediately;
  /// Data source and data format details. [Refer to details](https://www.alibabacloud.com/help/en/doc-detail/147819.html).
  late final pulumi.Output<String> source;
  /// Which time zone is the log time imported in, e.g. `+0800`.
  late final pulumi.Output<String?> timeZone;

  /// Creates a new [Ingestion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ingestion]. {@macro pulumi_log_ingestion_ingestion_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ingestion(
    String name, {
    IngestionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/ingestion:Ingestion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    ingestionName = registerOutput<String>('ingestionName');
    interval = registerOutput<String>('interval');
    logstore = registerOutput<String>('logstore');
    project = registerOutput<String>('project');
    runImmediately = registerOutput<bool>('runImmediately');
    source = registerOutput<String>('source');
    timeZone = registerOutput<String?>('timeZone');
  }

  /// Gets an existing [Ingestion] resource's state with the given [name] and [id].
  static Ingestion get(
    String name,
    pulumi.Input<String> id, {
    IngestionState? state,
  }) {
    return Ingestion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Ingestion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/ingestion:Ingestion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    ingestionName = registerOutput<String>('ingestionName');
    interval = registerOutput<String>('interval');
    logstore = registerOutput<String>('logstore');
    project = registerOutput<String>('project');
    runImmediately = registerOutput<bool>('runImmediately');
    source = registerOutput<String>('source');
    timeZone = registerOutput<String?>('timeZone');
  }
}
