import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_index_args.dart';
import 'search_index_state.dart';

/// Provides an OTS search index resource.
///
/// For information about OTS search index and how to use it, see [Search index overview](https://www.alibabacloud.com/help/en/tablestore/latest/search-index-overview).
///
/// &gt; **NOTE:** Available since v1.187.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultInstance = new alicloud.ots.Instance("default", {
///     name: `${name}-${_default.result}`,
///     description: name,
///     accessedBy: "Any",
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// const defaultTable = new alicloud.ots.Table("default", {
///     instanceName: defaultInstance.name,
///     tableName: "tf_example",
///     timeToLive: -1,
///     maxVersion: 1,
///     enableSse: true,
///     sseKeyType: "SSE_KMS_SERVICE",
///     primaryKeys: [
///         {
///             name: "pk1",
///             type: "Integer",
///         },
///         {
///             name: "pk2",
///             type: "String",
///         },
///         {
///             name: "pk3",
///             type: "Binary",
///         },
///     ],
/// });
/// const defaultSearchIndex = new alicloud.ots.SearchIndex("default", {
///     instanceName: defaultInstance.name,
///     tableName: defaultTable.tableName,
///     indexName: "example_index",
///     timeToLive: -1,
///     schemas: [{
///         fieldSchemas: [
///             {
///                 fieldName: "col1",
///                 fieldType: "Text",
///                 isArray: false,
///                 index: true,
///                 analyzer: "Split",
///                 store: true,
///             },
///             {
///                 fieldName: "col2",
///                 fieldType: "Long",
///                 enableSortAndAgg: true,
///             },
///             {
///                 fieldName: "pk1",
///                 fieldType: "Long",
///             },
///             {
///                 fieldName: "pk2",
///                 fieldType: "Text",
///             },
///         ],
///         indexSettings: [{
///             routingFields: [
///                 "pk1",
///                 "pk2",
///             ],
///         }],
///         indexSorts: [{
///             sorters: [
///                 {
///                     sorterType: "PrimaryKeySort",
///                     order: "Asc",
///                 },
///                 {
///                     sorterType: "FieldSort",
///                     order: "Desc",
///                     fieldName: "col2",
///                     mode: "Max",
///                 },
///             ],
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_instance = alicloud.ots.Instance("default",
///     name=f"{name}-{default['result']}",
///     description=name,
///     accessed_by="Any",
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// default_table = alicloud.ots.Table("default",
///     instance_name=default_instance.name,
///     table_name="tf_example",
///     time_to_live=-1,
///     max_version=1,
///     enable_sse=True,
///     sse_key_type="SSE_KMS_SERVICE",
///     primary_keys=[
///         {
///             "name": "pk1",
///             "type": "Integer",
///         },
///         {
///             "name": "pk2",
///             "type": "String",
///         },
///         {
///             "name": "pk3",
///             "type": "Binary",
///         },
///     ])
/// default_search_index = alicloud.ots.SearchIndex("default",
///     instance_name=default_instance.name,
///     table_name=default_table.table_name,
///     index_name="example_index",
///     time_to_live=-1,
///     schemas=[{
///         "field_schemas": [
///             {
///                 "field_name": "col1",
///                 "field_type": "Text",
///                 "is_array": False,
///                 "index": True,
///                 "analyzer": "Split",
///                 "store": True,
///             },
///             {
///                 "field_name": "col2",
///                 "field_type": "Long",
///                 "enable_sort_and_agg": True,
///             },
///             {
///                 "field_name": "pk1",
///                 "field_type": "Long",
///             },
///             {
///                 "field_name": "pk2",
///                 "field_type": "Text",
///             },
///         ],
///         "index_settings": [{
///             "routing_fields": [
///                 "pk1",
///                 "pk2",
///             ],
///         }],
///         "index_sorts": [{
///             "sorters": [
///                 {
///                     "sorter_type": "PrimaryKeySort",
///                     "order": "Asc",
///                 },
///                 {
///                     "sorter_type": "FieldSort",
///                     "order": "Desc",
///                     "field_name": "col2",
///                     "mode": "Max",
///                 },
///             ],
///         }],
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
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultInstance = new AliCloud.Ots.Instance("default", new()
///     {
///         Name = $"{name}-{@default.Result}",
///         Description = name,
///         AccessedBy = "Any",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
///     var defaultTable = new AliCloud.Ots.Table("default", new()
///     {
///         InstanceName = defaultInstance.Name,
///         TableName = "tf_example",
///         TimeToLive = -1,
///         MaxVersion = 1,
///         EnableSse = true,
///         SseKeyType = "SSE_KMS_SERVICE",
///         PrimaryKeys = new[]
///         {
///             new AliCloud.Ots.Inputs.TablePrimaryKeyArgs
///             {
///                 Name = "pk1",
///                 Type = "Integer",
///             },
///             new AliCloud.Ots.Inputs.TablePrimaryKeyArgs
///             {
///                 Name = "pk2",
///                 Type = "String",
///             },
///             new AliCloud.Ots.Inputs.TablePrimaryKeyArgs
///             {
///                 Name = "pk3",
///                 Type = "Binary",
///             },
///         },
///     });
///
///     var defaultSearchIndex = new AliCloud.Ots.SearchIndex("default", new()
///     {
///         InstanceName = defaultInstance.Name,
///         TableName = defaultTable.TableName,
///         IndexName = "example_index",
///         TimeToLive = -1,
///         Schemas = new[]
///         {
///             new AliCloud.Ots.Inputs.SearchIndexSchemaArgs
///             {
///                 FieldSchemas = new[]
///                 {
///                     new AliCloud.Ots.Inputs.SearchIndexSchemaFieldSchemaArgs
///                     {
///                         FieldName = "col1",
///                         FieldType = "Text",
///                         IsArray = false,
///                         Index = true,
///                         Analyzer = "Split",
///                         Store = true,
///                     },
///                     new AliCloud.Ots.Inputs.SearchIndexSchemaFieldSchemaArgs
///                     {
///                         FieldName = "col2",
///                         FieldType = "Long",
///                         EnableSortAndAgg = true,
///                     },
///                     new AliCloud.Ots.Inputs.SearchIndexSchemaFieldSchemaArgs
///                     {
///                         FieldName = "pk1",
///                         FieldType = "Long",
///                     },
///                     new AliCloud.Ots.Inputs.SearchIndexSchemaFieldSchemaArgs
///                     {
///                         FieldName = "pk2",
///                         FieldType = "Text",
///                     },
///                 },
///                 IndexSettings = new[]
///                 {
///                     new AliCloud.Ots.Inputs.SearchIndexSchemaIndexSettingArgs
///                     {
///                         RoutingFields = new[]
///                         {
///                             "pk1",
///                             "pk2",
///                         },
///                     },
///                 },
///                 IndexSorts = new[]
///                 {
///                     new AliCloud.Ots.Inputs.SearchIndexSchemaIndexSortArgs
///                     {
///                         Sorters = new[]
///                         {
///                             new AliCloud.Ots.Inputs.SearchIndexSchemaIndexSortSorterArgs
///                             {
///                                 SorterType = "PrimaryKeySort",
///                                 Order = "Asc",
///                             },
///                             new AliCloud.Ots.Inputs.SearchIndexSchemaIndexSortSorterArgs
///                             {
///                                 SorterType = "FieldSort",
///                                 Order = "Desc",
///                                 FieldName = "col2",
///                                 Mode = "Max",
///                             },
///                         },
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
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
/// 		defaultInstance, err := ots.NewInstance(ctx, "default", &ots.InstanceArgs{
/// 			Name:        pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Description: pulumi.String(name),
/// 			AccessedBy:  pulumi.String("Any"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTable, err := ots.NewTable(ctx, "default", &ots.TableArgs{
/// 			InstanceName: defaultInstance.Name,
/// 			TableName:    pulumi.String("tf_example"),
/// 			TimeToLive:   pulumi.Int(-1),
/// 			MaxVersion:   pulumi.Int(1),
/// 			EnableSse:    pulumi.Bool(true),
/// 			SseKeyType:   pulumi.String("SSE_KMS_SERVICE"),
/// 			PrimaryKeys: ots.TablePrimaryKeyArray{
/// 				&ots.TablePrimaryKeyArgs{
/// 					Name: pulumi.String("pk1"),
/// 					Type: pulumi.String("Integer"),
/// 				},
/// 				&ots.TablePrimaryKeyArgs{
/// 					Name: pulumi.String("pk2"),
/// 					Type: pulumi.String("String"),
/// 				},
/// 				&ots.TablePrimaryKeyArgs{
/// 					Name: pulumi.String("pk3"),
/// 					Type: pulumi.String("Binary"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ots.NewSearchIndex(ctx, "default", &ots.SearchIndexArgs{
/// 			InstanceName: defaultInstance.Name,
/// 			TableName:    defaultTable.TableName,
/// 			IndexName:    pulumi.String("example_index"),
/// 			TimeToLive:   pulumi.Int(-1),
/// 			Schemas: ots.SearchIndexSchemaArray{
/// 				&ots.SearchIndexSchemaArgs{
/// 					FieldSchemas: ots.SearchIndexSchemaFieldSchemaArray{
/// 						&ots.SearchIndexSchemaFieldSchemaArgs{
/// 							FieldName: pulumi.String("col1"),
/// 							FieldType: pulumi.String("Text"),
/// 							IsArray:   pulumi.Bool(false),
/// 							Index:     pulumi.Bool(true),
/// 							Analyzer:  pulumi.String("Split"),
/// 							Store:     pulumi.Bool(true),
/// 						},
/// 						&ots.SearchIndexSchemaFieldSchemaArgs{
/// 							FieldName:        pulumi.String("col2"),
/// 							FieldType:        pulumi.String("Long"),
/// 							EnableSortAndAgg: pulumi.Bool(true),
/// 						},
/// 						&ots.SearchIndexSchemaFieldSchemaArgs{
/// 							FieldName: pulumi.String("pk1"),
/// 							FieldType: pulumi.String("Long"),
/// 						},
/// 						&ots.SearchIndexSchemaFieldSchemaArgs{
/// 							FieldName: pulumi.String("pk2"),
/// 							FieldType: pulumi.String("Text"),
/// 						},
/// 					},
/// 					IndexSettings: ots.SearchIndexSchemaIndexSettingArray{
/// 						&ots.SearchIndexSchemaIndexSettingArgs{
/// 							RoutingFields: pulumi.StringArray{
/// 								pulumi.String("pk1"),
/// 								pulumi.String("pk2"),
/// 							},
/// 						},
/// 					},
/// 					IndexSorts: ots.SearchIndexSchemaIndexSortArray{
/// 						&ots.SearchIndexSchemaIndexSortArgs{
/// 							Sorters: ots.SearchIndexSchemaIndexSortSorterArray{
/// 								&ots.SearchIndexSchemaIndexSortSorterArgs{
/// 									SorterType: pulumi.String("PrimaryKeySort"),
/// 									Order:      pulumi.String("Asc"),
/// 								},
/// 								&ots.SearchIndexSchemaIndexSortSorterArgs{
/// 									SorterType: pulumi.String("FieldSort"),
/// 									Order:      pulumi.String("Desc"),
/// 									FieldName:  pulumi.String("col2"),
/// 									Mode:       pulumi.String("Max"),
/// 								},
/// 							},
/// 						},
/// 					},
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
/// import com.pulumi.alicloud.ots.Instance;
/// import com.pulumi.alicloud.ots.InstanceArgs;
/// import com.pulumi.alicloud.ots.Table;
/// import com.pulumi.alicloud.ots.TableArgs;
/// import com.pulumi.alicloud.ots.inputs.TablePrimaryKeyArgs;
/// import com.pulumi.alicloud.ots.SearchIndex;
/// import com.pulumi.alicloud.ots.SearchIndexArgs;
/// import com.pulumi.alicloud.ots.inputs.SearchIndexSchemaArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .name(String.format("%s-%s", name,default_.result()))
///             .description(name)
///             .accessedBy("Any")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///         var defaultTable = new Table("defaultTable", TableArgs.builder()
///             .instanceName(defaultInstance.name())
///             .tableName("tf_example")
///             .timeToLive(-1)
///             .maxVersion(1)
///             .enableSse(true)
///             .sseKeyType("SSE_KMS_SERVICE")
///             .primaryKeys(
///                 TablePrimaryKeyArgs.builder()
///                     .name("pk1")
///                     .type("Integer")
///                     .build(),
///                 TablePrimaryKeyArgs.builder()
///                     .name("pk2")
///                     .type("String")
///                     .build(),
///                 TablePrimaryKeyArgs.builder()
///                     .name("pk3")
///                     .type("Binary")
///                     .build())
///             .build());
///
///         var defaultSearchIndex = new SearchIndex("defaultSearchIndex", SearchIndexArgs.builder()
///             .instanceName(defaultInstance.name())
///             .tableName(defaultTable.tableName())
///             .indexName("example_index")
///             .timeToLive(-1)
///             .schemas(SearchIndexSchemaArgs.builder()
///                 .fieldSchemas(
///                     SearchIndexSchemaFieldSchemaArgs.builder()
///                         .fieldName("col1")
///                         .fieldType("Text")
///                         .isArray(false)
///                         .index(true)
///                         .analyzer("Split")
///                         .store(true)
///                         .build(),
///                     SearchIndexSchemaFieldSchemaArgs.builder()
///                         .fieldName("col2")
///                         .fieldType("Long")
///                         .enableSortAndAgg(true)
///                         .build(),
///                     SearchIndexSchemaFieldSchemaArgs.builder()
///                         .fieldName("pk1")
///                         .fieldType("Long")
///                         .build(),
///                     SearchIndexSchemaFieldSchemaArgs.builder()
///                         .fieldName("pk2")
///                         .fieldType("Text")
///                         .build())
///                 .indexSettings(SearchIndexSchemaIndexSettingArgs.builder()
///                     .routingFields(
///                         "pk1",
///                         "pk2")
///                     .build())
///                 .indexSorts(SearchIndexSchemaIndexSortArgs.builder()
///                     .sorters(
///                         SearchIndexSchemaIndexSortSorterArgs.builder()
///                             .sorterType("PrimaryKeySort")
///                             .order("Asc")
///                             .build(),
///                         SearchIndexSchemaIndexSortSorterArgs.builder()
///                             .sorterType("FieldSort")
///                             .order("Desc")
///                             .fieldName("col2")
///                             .mode("Max")
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultInstance:
///     type: alicloud:ots:Instance
///     name: default
///     properties:
///       name: ${name}-${default.result}
///       description: ${name}
///       accessedBy: Any
///       tags:
///         Created: TF
///         For: example
///   defaultTable:
///     type: alicloud:ots:Table
///     name: default
///     properties:
///       instanceName: ${defaultInstance.name}
///       tableName: tf_example
///       timeToLive: -1
///       maxVersion: 1
///       enableSse: true
///       sseKeyType: SSE_KMS_SERVICE
///       primaryKeys:
///         - name: pk1
///           type: Integer
///         - name: pk2
///           type: String
///         - name: pk3
///           type: Binary
///   defaultSearchIndex:
///     type: alicloud:ots:SearchIndex
///     name: default
///     properties:
///       instanceName: ${defaultInstance.name}
///       tableName: ${defaultTable.tableName}
///       indexName: example_index
///       timeToLive: -1
///       schemas:
///         - fieldSchemas:
///             - fieldName: col1
///               fieldType: Text
///               isArray: false
///               index: true
///               analyzer: Split
///               store: true
///             - fieldName: col2
///               fieldType: Long
///               enableSortAndAgg: true
///             - fieldName: pk1
///               fieldType: Long
///             - fieldName: pk2
///               fieldType: Text
///           indexSettings:
///             - routingFields:
///                 - pk1
///                 - pk2
///           indexSorts:
///             - sorters:
///                 - sorterType: PrimaryKeySort
///                   order: Asc
///                 - sorterType: FieldSort
///                   order: Desc
///                   fieldName: col2
///                   mode: Max
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OTS search index can be imported using id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ots/searchIndex:SearchIndex index1 <instance_name>:<table_name>:<index_name>:<index_type>
/// ```
class SearchIndex extends pulumi.CustomResource {
  /// The search index create time.
  late final pulumi.Output<int> createTime;

  /// The timestamp for sync phase.
  late final pulumi.Output<int> currentSyncTimestamp;

  /// The index id of the search index which could not be changed.
  late final pulumi.Output<String> indexId;

  /// The index name of the OTS Table. If changed, a new index would be created.
  late final pulumi.Output<String> indexName;

  /// The name of the OTS instance in which table will located.
  late final pulumi.Output<String> instanceName;

  /// The schema of the search index. If changed, a new index would be created. See `schema` below.
  late final pulumi.Output<List<Map<String, dynamic>>> schemas;

  /// The search index sync phase. possible values: `Full`, `Incr`.
  late final pulumi.Output<String> syncPhase;

  /// The name of the OTS table. If changed, a new table would be created.
  late final pulumi.Output<String> tableName;

  /// The index type of the OTS Table. Specifies the retention period of data in the search index. Unit: seconds. Default value: -1.
  /// If the retention period exceeds the TTL value, OTS automatically deletes expired data.
  late final pulumi.Output<int?> timeToLive;

  /// Creates a new [SearchIndex].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SearchIndex]. {@macro pulumi_ots_search_index_search_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SearchIndex(
    String name, {
    SearchIndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ots/searchIndex:SearchIndex',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<int>('createTime');
    currentSyncTimestamp = registerOutput<int>('currentSyncTimestamp');
    indexId = registerOutput<String>('indexId');
    indexName = registerOutput<String>('indexName');
    instanceName = registerOutput<String>('instanceName');
    schemas = registerOutput<List<Map<String, dynamic>>>('schemas');
    syncPhase = registerOutput<String>('syncPhase');
    tableName = registerOutput<String>('tableName');
    timeToLive = registerOutput<int?>('timeToLive');
  }

  /// Gets an existing [SearchIndex] resource's state with the given [name] and [id].
  static SearchIndex get(
    String name,
    pulumi.Input<String> id, {
    SearchIndexState? state,
  }) {
    return SearchIndex._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SearchIndex._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ots/searchIndex:SearchIndex',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<int>('createTime');
    currentSyncTimestamp = registerOutput<int>('currentSyncTimestamp');
    indexId = registerOutput<String>('indexId');
    indexName = registerOutput<String>('indexName');
    instanceName = registerOutput<String>('instanceName');
    schemas = registerOutput<List<Map<String, dynamic>>>('schemas');
    syncPhase = registerOutput<String>('syncPhase');
    tableName = registerOutput<String>('tableName');
    timeToLive = registerOutput<int?>('timeToLive');
  }
}
