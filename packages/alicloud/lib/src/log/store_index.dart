import 'package:pulumi/pulumi.dart' as pulumi;
import 'store_index_args.dart';
import 'store_index_field_search.dart';
import 'store_index_full_text.dart';

/// Log Service provides the LogSearch/Analytics function to query and analyze large amounts of logs in real time.
/// You can use this function by enabling the index and field statistics. [Refer to details](https://www.alibabacloud.com/help/doc-detail/43772.htm)
///
/// > **NOTE:** Available since v1.0.0.
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
/// });
/// const exampleStore = new alicloud.log.Store("example", {
///     projectName: example.projectName,
///     logstoreName: "example-store",
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const exampleStoreIndex = new alicloud.log.StoreIndex("example", {
///     project: example.projectName,
///     logstore: exampleStore.logstoreName,
///     fullText: {
///         caseSensitive: true,
///         token: ` #^*\x0d
/// \x09`,
///     },
///     fieldSearches: [{
///         name: "terraform-example",
///         enableAnalytics: true,
///         type: "text",
///         token: ` #^*\x0d
/// \x09`,
///     }],
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
///     description="terraform-example")
/// example_store = alicloud.log.Store("example",
///     project_name=example.project_name,
///     logstore_name="example-store",
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// example_store_index = alicloud.log.StoreIndex("example",
///     project=example.project_name,
///     logstore=example_store.logstore_name,
///     full_text={
///         "case_sensitive": True,
///         "token": """ #$^*\x0d
/// \x09""",
///     },
///     field_searches=[{
///         "name": "terraform-example",
///         "enable_analytics": True,
///         "type": "text",
///         "token": """ #$^*\x0d
/// \x09""",
///     }])
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
///     });
///
///     var exampleStore = new AliCloud.Log.Store("example", new()
///     {
///         ProjectName = example.ProjectName,
///         LogstoreName = "example-store",
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var exampleStoreIndex = new AliCloud.Log.StoreIndex("example", new()
///     {
///         Project = example.ProjectName,
///         Logstore = exampleStore.LogstoreName,
///         FullText = new AliCloud.Log.Inputs.StoreIndexFullTextArgs
///         {
///             CaseSensitive = true,
///             Token = @" #$^*
/// 	",
///         },
///         FieldSearches = new[]
///         {
///             new AliCloud.Log.Inputs.StoreIndexFieldSearchArgs
///             {
///                 Name = "terraform-example",
///                 EnableAnalytics = true,
///                 Type = "text",
///                 Token = @" #$^*
/// 	",
///             },
///         },
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStore, err := log.NewStore(ctx, "example", &log.StoreArgs{
/// 			ProjectName:        example.ProjectName,
/// 			LogstoreName:       pulumi.String("example-store"),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewStoreIndex(ctx, "example", &log.StoreIndexArgs{
/// 			Project:  example.ProjectName,
/// 			Logstore: exampleStore.LogstoreName,
/// 			FullText: &log.StoreIndexFullTextArgs{
/// 				CaseSensitive: pulumi.Bool(true),
/// 				Token:         pulumi.String(" #$^*\n	"),
/// 			},
/// 			FieldSearches: log.StoreIndexFieldSearchArray{
/// 				&log.StoreIndexFieldSearchArgs{
/// 					Name:            pulumi.String("terraform-example"),
/// 					EnableAnalytics: pulumi.Bool(true),
/// 					Type:            pulumi.String("text"),
/// 					Token:           pulumi.String(" #$^*\n	"),
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.log.StoreIndex;
/// import com.pulumi.alicloud.log.StoreIndexArgs;
/// import com.pulumi.alicloud.log.inputs.StoreIndexFullTextArgs;
/// import com.pulumi.alicloud.log.inputs.StoreIndexFieldSearchArgs;
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
///             .build());
///
///         var exampleStore = new Store("exampleStore", StoreArgs.builder()
///             .projectName(example.projectName())
///             .logstoreName("example-store")
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var exampleStoreIndex = new StoreIndex("exampleStoreIndex", StoreIndexArgs.builder()
///             .project(example.projectName())
///             .logstore(exampleStore.logstoreName())
///             .fullText(StoreIndexFullTextArgs.builder()
///                 .caseSensitive(true)
///                 .token("""
///  #$^*
/// 	                """)
///                 .build())
///             .fieldSearches(StoreIndexFieldSearchArgs.builder()
///                 .name("terraform-example")
///                 .enableAnalytics(true)
///                 .type("text")
///                 .token("""
///  #$^*
/// 	                """)
///                 .build())
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
///   exampleStore:
///     type: alicloud:log:Store
///     name: example
///     properties:
///       projectName: ${example.projectName}
///       logstoreName: example-store
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   exampleStoreIndex:
///     type: alicloud:log:StoreIndex
///     name: example
///     properties:
///       project: ${example.projectName}
///       logstore: ${exampleStore.logstoreName}
///       fullText:
///         caseSensitive: true
///         token: " #$^*\r\n\t"
///       fieldSearches:
///         - name: terraform-example
///           enableAnalytics: true
///           type: text
///           token: " #$^*\r\n\t"
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Module Support
///
/// You can use the existing sls module
/// to create SLS project, store and store index one-click, like ECS instances.
///
/// ## Import
///
/// Log store index can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/storeIndex:StoreIndex example tf-log:tf-log-store
/// ```
class StoreIndex extends pulumi.CustomResource {
  /// List configurations of field search index. See `field_search` below.
  ///
  /// > **Note:** At least one of the "full_text" and "field_search" should be specified.
  late final pulumi.Output<List<StoreIndexFieldSearch>?> fieldSearches;
  /// The configuration of full text index. See `full_text` below.
  late final pulumi.Output<StoreIndexFullText?> fullText;
  /// Whether to enable log reduce. Default to false.
  late final pulumi.Output<bool?> logReduce;
  /// The black list of log reduce.
  late final pulumi.Output<List<String>?> logReduceBlackLists;
  /// The white list of log reduce.
  late final pulumi.Output<List<String>?> logReduceWhiteLists;
  /// The log store name to the query index belongs.
  late final pulumi.Output<String> logstore;
  /// The max text length.
  late final pulumi.Output<int?> maxTextLen;
  /// The project name to the log store belongs.
  late final pulumi.Output<String> project;

  /// Creates a new [StoreIndex].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StoreIndex]. {@macro pulumi_log_store_index_store_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StoreIndex(
    String name, {
    StoreIndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/storeIndex:StoreIndex',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.fieldSearches = registerOutput<List<StoreIndexFieldSearch>?>('fieldSearches');
    this.fullText = registerOutput<StoreIndexFullText?>('fullText');
    this.logReduce = registerOutput<bool?>('logReduce');
    this.logReduceBlackLists = registerOutput<List<String>?>('logReduceBlackLists');
    this.logReduceWhiteLists = registerOutput<List<String>?>('logReduceWhiteLists');
    this.logstore = registerOutput<String>('logstore');
    this.maxTextLen = registerOutput<int?>('maxTextLen');
    this.project = registerOutput<String>('project');
  }
}
