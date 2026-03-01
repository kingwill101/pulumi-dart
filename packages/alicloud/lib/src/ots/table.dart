import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_args.dart';
import 'table_defined_column.dart';
import 'table_primary_key.dart';

/// Provides an OTS table resource.
///
/// > **NOTE:** From Provider version 1.10.0, the provider field 'ots_instance_name' has been deprecated and
/// you should use resource alicloud_ots_table's new field 'instance_name' and 'table_name' to re-import this resource.
///
/// > **NOTE:** Available since v1.9.2.
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
/// 		_, err = ots.NewTable(ctx, "default", &ots.TableArgs{
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OTS table can be imported using id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ots/table:Table table my-ots:ots_table
/// ```
class Table extends pulumi.CustomResource {
  /// Whether allow data update operations. Default value is true. Skipping the resource state refresh step may result in unnecessary execution plan when upgrading from an earlier version.
  late final pulumi.Output<bool?> allowUpdate;
  /// The property of `TableMeta` which indicates the structure information of a table. It describes the attribute value of defined column. The number of `defined_column` should not be more than 32. See `defined_column` below.
  late final pulumi.Output<List<TableDefinedColumn>?> definedColumns;
  /// The max version offset of the table. The valid value is 1-9223372036854775807. Defaults to 86400.
  late final pulumi.Output<String?> deviationCellVersionInSec;
  /// Whether enable OTS server side encryption. Default value is false.
  late final pulumi.Output<bool?> enableSse;
  /// The name of the OTS instance in which table will located.
  late final pulumi.Output<String> instanceName;
  /// The maximum number of versions stored in this table. The valid value is 1-2147483647.
  late final pulumi.Output<int> maxVersion;
  /// The property of `TableMeta` which indicates the structure information of a table. It describes the attribute value of primary key. The number of `primary_key` should not be less than one and not be more than four. See `primary_key` below.
  late final pulumi.Output<List<TablePrimaryKey>> primaryKeys;
  /// . The key ID of secret. `sse_key_id` is valid only when `sse_key_type` is set to `SSE_BYOK`.
  late final pulumi.Output<String?> sseKeyId;
  /// The key type of OTS server side encryption. `SSE_KMS_SERVICE`, `SSE_BYOK` is allowed.
  late final pulumi.Output<String?> sseKeyType;
  /// The arn of role that can access kms service. `sse_role_arn` is valid only when `sse_key_type` is set to `SSE_BYOK`.
  late final pulumi.Output<String?> sseRoleArn;
  /// The table name of the OTS instance. If changed, a new table would be created.
  late final pulumi.Output<String> tableName;
  /// The retention time of data stored in this table (unit: second). The value maximum is 2147483647 and -1 means never expired.
  late final pulumi.Output<int> timeToLive;

  /// Creates a new [Table].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Table]. {@macro pulumi_ots_table_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Table(
    String name, {
    TableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ots/table:Table',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowUpdate = registerOutput<bool?>('allowUpdate');
    this.definedColumns = registerOutput<List<TableDefinedColumn>?>('definedColumns');
    this.deviationCellVersionInSec = registerOutput<String?>('deviationCellVersionInSec');
    this.enableSse = registerOutput<bool?>('enableSse');
    this.instanceName = registerOutput<String>('instanceName');
    this.maxVersion = registerOutput<int>('maxVersion');
    this.primaryKeys = registerOutput<List<TablePrimaryKey>>('primaryKeys');
    this.sseKeyId = registerOutput<String?>('sseKeyId');
    this.sseKeyType = registerOutput<String?>('sseKeyType');
    this.sseRoleArn = registerOutput<String?>('sseRoleArn');
    this.tableName = registerOutput<String>('tableName');
    this.timeToLive = registerOutput<int>('timeToLive');
  }
}
