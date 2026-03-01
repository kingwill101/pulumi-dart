import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_secondary_index_args.dart';
import 'global_secondary_index_key_schema.dart';
import 'global_secondary_index_on_demand_throughput.dart';
import 'global_secondary_index_projection.dart';
import 'global_secondary_index_provisioned_throughput.dart';
import 'global_secondary_index_timeouts.dart';
import 'global_secondary_index_warm_throughput.dart';

/// !> The resource type `aws.dynamodb.GlobalSecondaryIndex` is an experimental feature. The schema or behavior may change without notice, and it is not subject to the backwards compatibility guarantee of the provider.
///
/// > The resource type `aws.dynamodb.GlobalSecondaryIndex` can be enabled by setting the environment variable `TF_AWS_EXPERIMENT_dynamodb_global_secondary_index` to any value. If not enabled, use of `aws.dynamodb.GlobalSecondaryIndex` will result in an error when running Terraform.
///
/// > Please provide feedback, positive or negative, at https://github.com/hashicorp/terraform-provider-aws/issues/45640. User feedback will determine if this experiment is a success.
///
/// !> **WARNING:** Do not combine `aws.dynamodb.GlobalSecondaryIndex` resources in conjunction with `global_secondary_index` on `aws.dynamodb.Table`. Doing so may cause conflicts, perpertual differences, and Global Secondary Indexes being overwritten.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleTable = new aws.dynamodb.Table("example", {
///     name: "example",
///     billingMode: "PROVISIONED",
///     readCapacity: 20,
///     writeCapacity: 20,
///     hashKey: "UserId",
///     rangeKey: "GameTitle",
///     attributes: [
///         {
///             name: "UserId",
///             type: "S",
///         },
///         {
///             name: "GameTitle",
///             type: "S",
///         },
///     ],
/// });
/// const example = new aws.dynamodb.GlobalSecondaryIndex("example", {
///     tableName: exampleTable.name,
///     indexName: "GameTitleIndex",
///     projection: {
///         projectionType: "INCLUDE",
///         nonKeyAttributes: ["UserId"],
///     },
///     provisionedThroughput: {
///         writeCapacityUnits: 10,
///         readCapacityUnits: 10,
///     },
///     keySchemas: [{
///         attributeName: "GameTitle",
///         attributeType: "S",
///         keyType: "HASH",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_table = aws.dynamodb.Table("example",
///     name="example",
///     billing_mode="PROVISIONED",
///     read_capacity=20,
///     write_capacity=20,
///     hash_key="UserId",
///     range_key="GameTitle",
///     attributes=[
///         {
///             "name": "UserId",
///             "type": "S",
///         },
///         {
///             "name": "GameTitle",
///             "type": "S",
///         },
///     ])
/// example = aws.dynamodb.GlobalSecondaryIndex("example",
///     table_name=example_table.name,
///     index_name="GameTitleIndex",
///     projection={
///         "projection_type": "INCLUDE",
///         "non_key_attributes": ["UserId"],
///     },
///     provisioned_throughput={
///         "write_capacity_units": 10,
///         "read_capacity_units": 10,
///     },
///     key_schemas=[{
///         "attribute_name": "GameTitle",
///         "attribute_type": "S",
///         "key_type": "HASH",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleTable = new Aws.DynamoDB.Table("example", new()
///     {
///         Name = "example",
///         BillingMode = "PROVISIONED",
///         ReadCapacity = 20,
///         WriteCapacity = 20,
///         HashKey = "UserId",
///         RangeKey = "GameTitle",
///         Attributes = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "UserId",
///                 Type = "S",
///             },
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "GameTitle",
///                 Type = "S",
///             },
///         },
///     });
///
///     var example = new Aws.DynamoDB.GlobalSecondaryIndex("example", new()
///     {
///         TableName = exampleTable.Name,
///         IndexName = "GameTitleIndex",
///         Projection = new Aws.DynamoDB.Inputs.GlobalSecondaryIndexProjectionArgs
///         {
///             ProjectionType = "INCLUDE",
///             NonKeyAttributes = new[]
///             {
///                 "UserId",
///             },
///         },
///         ProvisionedThroughput = new Aws.DynamoDB.Inputs.GlobalSecondaryIndexProvisionedThroughputArgs
///         {
///             WriteCapacityUnits = 10,
///             ReadCapacityUnits = 10,
///         },
///         KeySchemas = new[]
///         {
///             new Aws.DynamoDB.Inputs.GlobalSecondaryIndexKeySchemaArgs
///             {
///                 AttributeName = "GameTitle",
///                 AttributeType = "S",
///                 KeyType = "HASH",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleTable, err := dynamodb.NewTable(ctx, "example", &dynamodb.TableArgs{
/// 			Name:          pulumi.String("example"),
/// 			BillingMode:   pulumi.String("PROVISIONED"),
/// 			ReadCapacity:  pulumi.Int(20),
/// 			WriteCapacity: pulumi.Int(20),
/// 			HashKey:       pulumi.String("UserId"),
/// 			RangeKey:      pulumi.String("GameTitle"),
/// 			Attributes: dynamodb.TableAttributeArray{
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("UserId"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("GameTitle"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dynamodb.NewGlobalSecondaryIndex(ctx, "example", &dynamodb.GlobalSecondaryIndexArgs{
/// 			TableName: exampleTable.Name,
/// 			IndexName: pulumi.String("GameTitleIndex"),
/// 			Projection: &dynamodb.GlobalSecondaryIndexProjectionArgs{
/// 				ProjectionType: pulumi.String("INCLUDE"),
/// 				NonKeyAttributes: pulumi.StringArray{
/// 					pulumi.String("UserId"),
/// 				},
/// 			},
/// 			ProvisionedThroughput: &dynamodb.GlobalSecondaryIndexProvisionedThroughputArgs{
/// 				WriteCapacityUnits: pulumi.Int(10),
/// 				ReadCapacityUnits:  pulumi.Int(10),
/// 			},
/// 			KeySchemas: dynamodb.GlobalSecondaryIndexKeySchemaArray{
/// 				&dynamodb.GlobalSecondaryIndexKeySchemaArgs{
/// 					AttributeName: pulumi.String("GameTitle"),
/// 					AttributeType: pulumi.String("S"),
/// 					KeyType:       pulumi.String("HASH"),
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
/// import com.pulumi.aws.dynamodb.Table;
/// import com.pulumi.aws.dynamodb.TableArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableAttributeArgs;
/// import com.pulumi.aws.dynamodb.GlobalSecondaryIndex;
/// import com.pulumi.aws.dynamodb.GlobalSecondaryIndexArgs;
/// import com.pulumi.aws.dynamodb.inputs.GlobalSecondaryIndexProjectionArgs;
/// import com.pulumi.aws.dynamodb.inputs.GlobalSecondaryIndexProvisionedThroughputArgs;
/// import com.pulumi.aws.dynamodb.inputs.GlobalSecondaryIndexKeySchemaArgs;
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
///         var exampleTable = new Table("exampleTable", TableArgs.builder()
///             .name("example")
///             .billingMode("PROVISIONED")
///             .readCapacity(20)
///             .writeCapacity(20)
///             .hashKey("UserId")
///             .rangeKey("GameTitle")
///             .attributes(
///                 TableAttributeArgs.builder()
///                     .name("UserId")
///                     .type("S")
///                     .build(),
///                 TableAttributeArgs.builder()
///                     .name("GameTitle")
///                     .type("S")
///                     .build())
///             .build());
///
///         var example = new GlobalSecondaryIndex("example", GlobalSecondaryIndexArgs.builder()
///             .tableName(exampleTable.name())
///             .indexName("GameTitleIndex")
///             .projection(GlobalSecondaryIndexProjectionArgs.builder()
///                 .projectionType("INCLUDE")
///                 .nonKeyAttributes("UserId")
///                 .build())
///             .provisionedThroughput(GlobalSecondaryIndexProvisionedThroughputArgs.builder()
///                 .writeCapacityUnits(10)
///                 .readCapacityUnits(10)
///                 .build())
///             .keySchemas(GlobalSecondaryIndexKeySchemaArgs.builder()
///                 .attributeName("GameTitle")
///                 .attributeType("S")
///                 .keyType("HASH")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dynamodb:GlobalSecondaryIndex
///     properties:
///       tableName: ${exampleTable.name}
///       indexName: GameTitleIndex
///       projection:
///         projectionType: INCLUDE
///         nonKeyAttributes:
///           - UserId
///       provisionedThroughput:
///         writeCapacityUnits: 10
///         readCapacityUnits: 10
///       keySchemas:
///         - attributeName: GameTitle
///           attributeType: S
///           keyType: HASH
///   exampleTable:
///     type: aws:dynamodb:Table
///     name: example
///     properties:
///       name: example
///       billingMode: PROVISIONED
///       readCapacity: 20
///       writeCapacity: 20
///       hashKey: UserId
///       rangeKey: GameTitle
///       attributes:
///         - name: UserId
///           type: S
///         - name: GameTitle
///           type: S
/// ```
///
///
/// ## Migrating
///
/// Use the following steps to migrate existing Global Secondary Indexes defined inline in `global_secondary_index` on an `aws.dynamodb.Table`.
///
/// For each block `global_secondary_index` create a new `aws.dynamodb.GlobalSecondaryIndex` resource with configuration corresponding to the existing block.
///
/// For example, starting with the following configuration:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dynamodb.Table("example", {
///     name: "example-table",
///     hashKey: "example-key",
///     readCapacity: 1,
///     writeCapacity: 1,
///     globalSecondaryIndexes: [
///         {
///             name: "example-index-1",
///             projectionType: "ALL",
///             hashKey: "example-gsi-key-1",
///             readCapacity: 1,
///             writeCapacity: 1,
///         },
///         {
///             name: "example-index-2",
///             projectionType: "ALL",
///             hashKey: "example-gsi-key-2",
///             readCapacity: 1,
///             writeCapacity: 1,
///         },
///     ],
///     attributes: [
///         {
///             name: "example-key",
///             type: "S",
///         },
///         {
///             name: "example-gsi-key-1",
///             type: "S",
///         },
///         {
///             name: "example-gsi-key-2",
///             type: "S",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dynamodb.Table("example",
///     name="example-table",
///     hash_key="example-key",
///     read_capacity=1,
///     write_capacity=1,
///     global_secondary_indexes=[
///         {
///             "name": "example-index-1",
///             "projection_type": "ALL",
///             "hash_key": "example-gsi-key-1",
///             "read_capacity": 1,
///             "write_capacity": 1,
///         },
///         {
///             "name": "example-index-2",
///             "projection_type": "ALL",
///             "hash_key": "example-gsi-key-2",
///             "read_capacity": 1,
///             "write_capacity": 1,
///         },
///     ],
///     attributes=[
///         {
///             "name": "example-key",
///             "type": "S",
///         },
///         {
///             "name": "example-gsi-key-1",
///             "type": "S",
///         },
///         {
///             "name": "example-gsi-key-2",
///             "type": "S",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DynamoDB.Table("example", new()
///     {
///         Name = "example-table",
///         HashKey = "example-key",
///         ReadCapacity = 1,
///         WriteCapacity = 1,
///         GlobalSecondaryIndexes = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableGlobalSecondaryIndexArgs
///             {
///                 Name = "example-index-1",
///                 ProjectionType = "ALL",
///                 HashKey = "example-gsi-key-1",
///                 ReadCapacity = 1,
///                 WriteCapacity = 1,
///             },
///             new Aws.DynamoDB.Inputs.TableGlobalSecondaryIndexArgs
///             {
///                 Name = "example-index-2",
///                 ProjectionType = "ALL",
///                 HashKey = "example-gsi-key-2",
///                 ReadCapacity = 1,
///                 WriteCapacity = 1,
///             },
///         },
///         Attributes = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "example-key",
///                 Type = "S",
///             },
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "example-gsi-key-1",
///                 Type = "S",
///             },
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "example-gsi-key-2",
///                 Type = "S",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dynamodb.NewTable(ctx, "example", &dynamodb.TableArgs{
/// 			Name:          pulumi.String("example-table"),
/// 			HashKey:       pulumi.String("example-key"),
/// 			ReadCapacity:  pulumi.Int(1),
/// 			WriteCapacity: pulumi.Int(1),
/// 			GlobalSecondaryIndexes: dynamodb.TableGlobalSecondaryIndexArray{
/// 				&dynamodb.TableGlobalSecondaryIndexArgs{
/// 					Name:           pulumi.String("example-index-1"),
/// 					ProjectionType: pulumi.String("ALL"),
/// 					HashKey:        pulumi.String("example-gsi-key-1"),
/// 					ReadCapacity:   pulumi.Int(1),
/// 					WriteCapacity:  pulumi.Int(1),
/// 				},
/// 				&dynamodb.TableGlobalSecondaryIndexArgs{
/// 					Name:           pulumi.String("example-index-2"),
/// 					ProjectionType: pulumi.String("ALL"),
/// 					HashKey:        pulumi.String("example-gsi-key-2"),
/// 					ReadCapacity:   pulumi.Int(1),
/// 					WriteCapacity:  pulumi.Int(1),
/// 				},
/// 			},
/// 			Attributes: dynamodb.TableAttributeArray{
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("example-key"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("example-gsi-key-1"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("example-gsi-key-2"),
/// 					Type: pulumi.String("S"),
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
/// import com.pulumi.aws.dynamodb.Table;
/// import com.pulumi.aws.dynamodb.TableArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableGlobalSecondaryIndexArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableAttributeArgs;
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
///         var example = new Table("example", TableArgs.builder()
///             .name("example-table")
///             .hashKey("example-key")
///             .readCapacity(1)
///             .writeCapacity(1)
///             .globalSecondaryIndexes(
///                 TableGlobalSecondaryIndexArgs.builder()
///                     .name("example-index-1")
///                     .projectionType("ALL")
///                     .hashKey("example-gsi-key-1")
///                     .readCapacity(1)
///                     .writeCapacity(1)
///                     .build(),
///                 TableGlobalSecondaryIndexArgs.builder()
///                     .name("example-index-2")
///                     .projectionType("ALL")
///                     .hashKey("example-gsi-key-2")
///                     .readCapacity(1)
///                     .writeCapacity(1)
///                     .build())
///             .attributes(
///                 TableAttributeArgs.builder()
///                     .name("example-key")
///                     .type("S")
///                     .build(),
///                 TableAttributeArgs.builder()
///                     .name("example-gsi-key-1")
///                     .type("S")
///                     .build(),
///                 TableAttributeArgs.builder()
///                     .name("example-gsi-key-2")
///                     .type("S")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dynamodb:Table
///     properties:
///       name: example-table
///       hashKey: example-key
///       readCapacity: 1
///       writeCapacity: 1
///       globalSecondaryIndexes:
///         - name: example-index-1
///           projectionType: ALL
///           hashKey: example-gsi-key-1
///           readCapacity: 1
///           writeCapacity: 1
///         - name: example-index-2
///           projectionType: ALL
///           hashKey: example-gsi-key-2
///           readCapacity: 1
///           writeCapacity: 1
///       attributes:
///         - name: example-key
///           type: S
///         - name: example-gsi-key-1
///           type: S
///         - name: example-gsi-key-2
///           type: S
/// ```
///
///
/// Update the configuration to the following. Note that the schema of `aws.dynamodb.GlobalSecondaryIndex` has some differences with `global_secondary_index` on `aws.dynamodb.Table`.
///
/// If using Terraform versions prior to v1.5.0, remove the `import` blocks and use the `pulumi import` command.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import DynamoDB tables using the `table_name` and `index_name`, separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/globalSecondaryIndex:GlobalSecondaryIndex example 'example-table,example-index'
/// ```
class GlobalSecondaryIndex extends pulumi.CustomResource {
  /// ARN of the GSI.
  late final pulumi.Output<String> arn;
  /// Name of the index.
  late final pulumi.Output<String> indexName;
  /// Set of nested attribute definitions.
  /// At least 1 element defining a `HASH` is required.
  /// All elements with the `key_type` of `HASH` must precede elements with `key_type` of `RANGE`.
  /// Changing any values in `key_schema` will re-create the resource.
  /// See `key_schema` below.
  late final pulumi.Output<List<GlobalSecondaryIndexKeySchema>?> keySchemas;
  /// Sets the maximum number of read and write units for the index.
  /// See `on_demand_throughput` below.
  /// Only valid if the table's `billing_mode` is `PAY_PER_REQUEST`.
  late final pulumi.Output<GlobalSecondaryIndexOnDemandThroughput?> onDemandThroughput;
  /// Describes which attributes from the table are represented in the index.
  /// See `projection` below.
  late final pulumi.Output<GlobalSecondaryIndexProjection?> projection;
  /// Provisioned throughput for the index.
  /// See `provisioned_throughput` below.
  /// Required if the table's `billing_mode` is `PROVISIONED`.
  late final pulumi.Output<GlobalSecondaryIndexProvisionedThroughput?> provisionedThroughput;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Name of the table this index belongs to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> tableName;
  late final pulumi.Output<GlobalSecondaryIndexTimeouts?> timeouts;
  /// Sets the number of warm read and write units for this index.
  /// See `warm_throughput` below.
  late final pulumi.Output<GlobalSecondaryIndexWarmThroughput> warmThroughput;

  /// Creates a new [GlobalSecondaryIndex].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalSecondaryIndex]. {@macro pulumi_dynamodb_global_secondary_index_global_secondary_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalSecondaryIndex(
    String name, {
    GlobalSecondaryIndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/globalSecondaryIndex:GlobalSecondaryIndex',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.indexName = registerOutput<String>('indexName');
    this.keySchemas = registerOutput<List<GlobalSecondaryIndexKeySchema>?>('keySchemas');
    this.onDemandThroughput = registerOutput<GlobalSecondaryIndexOnDemandThroughput?>('onDemandThroughput');
    this.projection = registerOutput<GlobalSecondaryIndexProjection?>('projection');
    this.provisionedThroughput = registerOutput<GlobalSecondaryIndexProvisionedThroughput?>('provisionedThroughput');
    this.region = registerOutput<String>('region');
    this.tableName = registerOutput<String>('tableName');
    this.timeouts = registerOutput<GlobalSecondaryIndexTimeouts?>('timeouts');
    this.warmThroughput = registerOutput<GlobalSecondaryIndexWarmThroughput>('warmThroughput');
  }
}
