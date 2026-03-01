import 'package:pulumi/pulumi.dart' as pulumi;
import 'secondary_index_args.dart';

/// Provides an OTS secondary index resource.
///
/// For information about OTS secondary index and how to use it, see [Secondary index overview](https://www.alibabacloud.com/help/en/tablestore/latest/secondary-index-overview).
///
/// > **NOTE:** Available since v1.187.0.
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
///     definedColumns: [
///         {
///             name: "col1",
///             type: "Integer",
///         },
///         {
///             name: "col2",
///             type: "String",
///         },
///         {
///             name: "col3",
///             type: "Binary",
///         },
///     ],
/// });
/// const defaultSecondaryIndex = new alicloud.ots.SecondaryIndex("default", {
///     instanceName: defaultInstance.name,
///     tableName: defaultTable.tableName,
///     indexName: "example_index",
///     indexType: "Global",
///     includeBaseData: true,
///     primaryKeys: [
///         "pk1",
///         "pk2",
///         "pk3",
///     ],
///     definedColumns: [
///         "col1",
///         "col2",
///         "col3",
///     ],
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
///     ],
///     defined_columns=[
///         {
///             "name": "col1",
///             "type": "Integer",
///         },
///         {
///             "name": "col2",
///             "type": "String",
///         },
///         {
///             "name": "col3",
///             "type": "Binary",
///         },
///     ])
/// default_secondary_index = alicloud.ots.SecondaryIndex("default",
///     instance_name=default_instance.name,
///     table_name=default_table.table_name,
///     index_name="example_index",
///     index_type="Global",
///     include_base_data=True,
///     primary_keys=[
///         "pk1",
///         "pk2",
///         "pk3",
///     ],
///     defined_columns=[
///         "col1",
///         "col2",
///         "col3",
///     ])
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
///         DefinedColumns = new[]
///         {
///             new AliCloud.Ots.Inputs.TableDefinedColumnArgs
///             {
///                 Name = "col1",
///                 Type = "Integer",
///             },
///             new AliCloud.Ots.Inputs.TableDefinedColumnArgs
///             {
///                 Name = "col2",
///                 Type = "String",
///             },
///             new AliCloud.Ots.Inputs.TableDefinedColumnArgs
///             {
///                 Name = "col3",
///                 Type = "Binary",
///             },
///         },
///     });
///
///     var defaultSecondaryIndex = new AliCloud.Ots.SecondaryIndex("default", new()
///     {
///         InstanceName = defaultInstance.Name,
///         TableName = defaultTable.TableName,
///         IndexName = "example_index",
///         IndexType = "Global",
///         IncludeBaseData = true,
///         PrimaryKeys = new[]
///         {
///             "pk1",
///             "pk2",
///             "pk3",
///         },
///         DefinedColumns = new[]
///         {
///             "col1",
///             "col2",
///             "col3",
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
/// 			DefinedColumns: ots.TableDefinedColumnArray{
/// 				&ots.TableDefinedColumnArgs{
/// 					Name: pulumi.String("col1"),
/// 					Type: pulumi.String("Integer"),
/// 				},
/// 				&ots.TableDefinedColumnArgs{
/// 					Name: pulumi.String("col2"),
/// 					Type: pulumi.String("String"),
/// 				},
/// 				&ots.TableDefinedColumnArgs{
/// 					Name: pulumi.String("col3"),
/// 					Type: pulumi.String("Binary"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ots.NewSecondaryIndex(ctx, "default", &ots.SecondaryIndexArgs{
/// 			InstanceName:    defaultInstance.Name,
/// 			TableName:       defaultTable.TableName,
/// 			IndexName:       pulumi.String("example_index"),
/// 			IndexType:       pulumi.String("Global"),
/// 			IncludeBaseData: pulumi.Bool(true),
/// 			PrimaryKeys: pulumi.StringArray{
/// 				pulumi.String("pk1"),
/// 				pulumi.String("pk2"),
/// 				pulumi.String("pk3"),
/// 			},
/// 			DefinedColumns: pulumi.StringArray{
/// 				pulumi.String("col1"),
/// 				pulumi.String("col2"),
/// 				pulumi.String("col3"),
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
/// import com.pulumi.alicloud.ots.inputs.TableDefinedColumnArgs;
/// import com.pulumi.alicloud.ots.SecondaryIndex;
/// import com.pulumi.alicloud.ots.SecondaryIndexArgs;
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
///             .definedColumns(
///                 TableDefinedColumnArgs.builder()
///                     .name("col1")
///                     .type("Integer")
///                     .build(),
///                 TableDefinedColumnArgs.builder()
///                     .name("col2")
///                     .type("String")
///                     .build(),
///                 TableDefinedColumnArgs.builder()
///                     .name("col3")
///                     .type("Binary")
///                     .build())
///             .build());
///
///         var defaultSecondaryIndex = new SecondaryIndex("defaultSecondaryIndex", SecondaryIndexArgs.builder()
///             .instanceName(defaultInstance.name())
///             .tableName(defaultTable.tableName())
///             .indexName("example_index")
///             .indexType("Global")
///             .includeBaseData(true)
///             .primaryKeys(
///                 "pk1",
///                 "pk2",
///                 "pk3")
///             .definedColumns(
///                 "col1",
///                 "col2",
///                 "col3")
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
///       definedColumns:
///         - name: col1
///           type: Integer
///         - name: col2
///           type: String
///         - name: col3
///           type: Binary
///   defaultSecondaryIndex:
///     type: alicloud:ots:SecondaryIndex
///     name: default
///     properties:
///       instanceName: ${defaultInstance.name}
///       tableName: ${defaultTable.tableName}
///       indexName: example_index
///       indexType: Global
///       includeBaseData: true
///       primaryKeys:
///         - pk1
///         - pk2
///         - pk3
///       definedColumns:
///         - col1
///         - col2
///         - col3
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OTS secondary index can be imported using id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ots/secondaryIndex:SecondaryIndex index1 <instance_name>:<table_name>:<index_name>:<index_type>
/// ```
class SecondaryIndex extends pulumi.CustomResource {
  /// A list of defined column for index, referenced from Table's primary keys or predefined columns.
  late final pulumi.Output<List<String>?> definedColumns;
  /// whether the index contains data that already exists in the data table. When include_base_data is set to true, it means that stock data is included.
  late final pulumi.Output<bool> includeBaseData;
  /// The index name of the OTS Table. If changed, a new index would be created.
  late final pulumi.Output<String> indexName;
  /// The index type of the OTS Table. If changed, a new index would be created, only `Global` or `Local` is allowed.
  late final pulumi.Output<String> indexType;
  /// The name of the OTS instance in which table will located.
  late final pulumi.Output<String> instanceName;
  /// A list of primary keys for index, referenced from Table's primary keys or predefined columns.
  late final pulumi.Output<List<String>> primaryKeys;
  /// The name of the OTS table. If changed, a new table would be created.
  late final pulumi.Output<String> tableName;

  /// Creates a new [SecondaryIndex].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecondaryIndex]. {@macro pulumi_ots_secondary_index_secondary_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecondaryIndex(
    String name, {
    SecondaryIndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ots/secondaryIndex:SecondaryIndex',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.definedColumns = registerOutput<List<String>?>('definedColumns');
    this.includeBaseData = registerOutput<bool>('includeBaseData');
    this.indexName = registerOutput<String>('indexName');
    this.indexType = registerOutput<String>('indexType');
    this.instanceName = registerOutput<String>('instanceName');
    this.primaryKeys = registerOutput<List<String>>('primaryKeys');
    this.tableName = registerOutput<String>('tableName');
  }
}
