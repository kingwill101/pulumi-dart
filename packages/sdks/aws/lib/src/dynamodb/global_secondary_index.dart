import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_secondary_index_args.dart';
import 'global_secondary_index_key_schema.dart';
import 'global_secondary_index_on_demand_throughput.dart';
import 'global_secondary_index_projection.dart';
import 'global_secondary_index_provisioned_throughput.dart';
import 'global_secondary_index_state.dart';
import 'global_secondary_index_timeouts.dart';
import 'global_secondary_index_warm_throughput.dart';

/// &gt; **WARNING:** Do not combine `aws.dynamodb.GlobalSecondaryIndex` resources in conjunction with `globalSecondaryIndex` on `aws.dynamodb.Table`. Doing so may cause conflicts, perpertual differences, and Global Secondary Indexes being overwritten.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleTable = new aws.dynamodb.Table("example", {
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
///     name: "example",
///     billingMode: "PROVISIONED",
///     readCapacity: 20,
///     writeCapacity: 20,
///     hashKey: "UserId",
///     rangeKey: "GameTitle",
/// });
/// const example = new aws.dynamodb.GlobalSecondaryIndex("example", {
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
///     tableName: exampleTable.name,
///     indexName: "GameTitleIndex",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_table = aws.dynamodb.Table("example",
///     attributes=[
///         {
///             "name": "UserId",
///             "type": "S",
///         },
///         {
///             "name": "GameTitle",
///             "type": "S",
///         },
///     ],
///     name="example",
///     billing_mode="PROVISIONED",
///     read_capacity=20,
///     write_capacity=20,
///     hash_key="UserId",
///     range_key="GameTitle")
/// example = aws.dynamodb.GlobalSecondaryIndex("example",
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
///     }],
///     table_name=example_table.name,
///     index_name="GameTitleIndex")
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
///         Name = "example",
///         BillingMode = "PROVISIONED",
///         ReadCapacity = 20,
///         WriteCapacity = 20,
///         HashKey = "UserId",
///         RangeKey = "GameTitle",
///     });
///
///     var example = new Aws.DynamoDB.GlobalSecondaryIndex("example", new()
///     {
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
///         TableName = exampleTable.Name,
///         IndexName = "GameTitleIndex",
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
/// 			Name:          pulumi.String("example"),
/// 			BillingMode:   pulumi.String("PROVISIONED"),
/// 			ReadCapacity:  pulumi.Int(20),
/// 			WriteCapacity: pulumi.Int(20),
/// 			HashKey:       pulumi.String("UserId"),
/// 			RangeKey:      pulumi.String("GameTitle"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dynamodb.NewGlobalSecondaryIndex(ctx, "example", &dynamodb.GlobalSecondaryIndexArgs{
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
/// 			TableName: exampleTable.Name,
/// 			IndexName: pulumi.String("GameTitleIndex"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_dynamodb_globalsecondaryindex" "example" {
///   projection = {
///     projection_type    = "INCLUDE"
///     non_key_attributes = ["UserId"]
///   }
///   provisioned_throughput = {
///     write_capacity_units = 10
///     read_capacity_units  = 10
///   }
///   key_schemas {
///     attribute_name = "GameTitle"
///     attribute_type = "S"
///     key_type       = "HASH"
///   }
///   table_name = aws_dynamodb_table.example.name
///   index_name = "GameTitleIndex"
/// }
/// resource "aws_dynamodb_table" "example" {
///   attributes {
///     name = "UserId"
///     type = "S"
///   }
///   attributes {
///     name = "GameTitle"
///     type = "S"
///   }
///   name           = "example"
///   billing_mode   = "PROVISIONED"
///   read_capacity  = 20
///   write_capacity = 20
///   hash_key       = "UserId"
///   range_key      = "GameTitle"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .attributes(
///                 TableAttributeArgs.builder()
///                     .name("UserId")
///                     .type("S")
///                     .build(),
///                 TableAttributeArgs.builder()
///                     .name("GameTitle")
///                     .type("S")
///                     .build())
///             .name("example")
///             .billingMode("PROVISIONED")
///             .readCapacity(20)
///             .writeCapacity(20)
///             .hashKey("UserId")
///             .rangeKey("GameTitle")
///             .build());
///
///         var example = new GlobalSecondaryIndex("example", GlobalSecondaryIndexArgs.builder()
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
///             .tableName(exampleTable.name())
///             .indexName("GameTitleIndex")
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
///       tableName: ${exampleTable.name}
///       indexName: GameTitleIndex
///   exampleTable:
///     type: aws:dynamodb:Table
///     name: example
///     properties:
///       attributes:
///         - name: UserId
///           type: S
///         - name: GameTitle
///           type: S
///       name: example
///       billingMode: PROVISIONED
///       readCapacity: 20
///       writeCapacity: 20
///       hashKey: UserId
///       rangeKey: GameTitle
/// ```
///
///
/// ### Migrating
///
/// Use the following steps to migrate existing Global Secondary Indexes defined inline in `globalSecondaryIndex` on an `aws.dynamodb.Table`.
///
/// For each block `globalSecondaryIndex` create a new `aws.dynamodb.GlobalSecondaryIndex` resource with configuration corresponding to the existing block.
///
/// For example, starting with the following configuration:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dynamodb.Table("example", {
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
///     name: "example-table",
///     hashKey: "example-key",
///     readCapacity: 1,
///     writeCapacity: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dynamodb.Table("example",
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
///     ],
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
///     name="example-table",
///     hash_key="example-key",
///     read_capacity=1,
///     write_capacity=1)
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
///         Name = "example-table",
///         HashKey = "example-key",
///         ReadCapacity = 1,
///         WriteCapacity = 1,
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
/// 			Name:          pulumi.String("example-table"),
/// 			HashKey:       pulumi.String("example-key"),
/// 			ReadCapacity:  pulumi.Int(1),
/// 			WriteCapacity: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_dynamodb_table" "example" {
///   attributes {
///     name = "example-key"
///     type = "S"
///   }
///   attributes {
///     name = "example-gsi-key-1"
///     type = "S"
///   }
///   attributes {
///     name = "example-gsi-key-2"
///     type = "S"
///   }
///   global_secondary_indexes {
///     name            = "example-index-1"
///     projection_type = "ALL"
///     hash_key        = "example-gsi-key-1"
///     read_capacity   = 1
///     write_capacity  = 1
///   }
///   global_secondary_indexes {
///     name            = "example-index-2"
///     projection_type = "ALL"
///     hash_key        = "example-gsi-key-2"
///     read_capacity   = 1
///     write_capacity  = 1
///   }
///   name           = "example-table"
///   hash_key       = "example-key"
///   read_capacity  = 1
///   write_capacity = 1
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
/// import com.pulumi.aws.dynamodb.inputs.TableGlobalSecondaryIndexArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .name("example-table")
///             .hashKey("example-key")
///             .readCapacity(1)
///             .writeCapacity(1)
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
///       attributes:
///         - name: example-key
///           type: S
///         - name: example-gsi-key-1
///           type: S
///         - name: example-gsi-key-2
///           type: S
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
///       name: example-table
///       hashKey: example-key
///       readCapacity: 1
///       writeCapacity: 1
/// ```
///
///
/// Update the configuration to the following. Note that the schema of `aws.dynamodb.GlobalSecondaryIndex` has some differences with `globalSecondaryIndex` on `aws.dynamodb.Table`.
///
/// If using Terraform versions prior to v1.5.0, remove the `import` blocks and use the `pulumi import` command.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import DynamoDB tables using the `tableName` and `indexName`, separated by a comma. For example:
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
  /// All elements with the `keyType` of `HASH` must precede elements with `keyType` of `RANGE`.
  /// Changing any values in `keySchema` will re-create the resource.
  /// See `keySchema` below.
  late final pulumi.Output<List<GlobalSecondaryIndexKeySchema>> keySchemas;
  /// Sets the maximum number of read and write units for the index.
  /// See `onDemandThroughput` below.
  /// Only valid if the table's `billingMode` is `PAY_PER_REQUEST`.
  late final pulumi.Output<GlobalSecondaryIndexOnDemandThroughput?> onDemandThroughput;
  /// Describes which attributes from the table are represented in the index.
  /// See `projection` below.
  late final pulumi.Output<GlobalSecondaryIndexProjection?> projection;
  /// Provisioned throughput for the index.
  /// See `provisionedThroughput` below.
  /// Required if the table's `billingMode` is `PROVISIONED`.
  late final pulumi.Output<GlobalSecondaryIndexProvisionedThroughput?> provisionedThroughput;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Name of the table this index belongs to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> tableName;
  late final pulumi.Output<GlobalSecondaryIndexTimeouts?> timeouts;
  /// Sets the number of warm read and write units for this index.
  /// See `warmThroughput` below.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    indexName = registerOutput<String>('indexName');
    keySchemas = registerOutput<List<GlobalSecondaryIndexKeySchema>>('keySchemas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GlobalSecondaryIndexKeySchema>(guardedValue, (value) => GlobalSecondaryIndexKeySchema.fromMap((value as Map).cast<String, dynamic>())); });
    onDemandThroughput = registerOutput<GlobalSecondaryIndexOnDemandThroughput?>('onDemandThroughput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalSecondaryIndexOnDemandThroughput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    projection = registerOutput<GlobalSecondaryIndexProjection?>('projection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalSecondaryIndexProjection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisionedThroughput = registerOutput<GlobalSecondaryIndexProvisionedThroughput?>('provisionedThroughput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalSecondaryIndexProvisionedThroughput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tableName = registerOutput<String>('tableName');
    timeouts = registerOutput<GlobalSecondaryIndexTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalSecondaryIndexTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    warmThroughput = registerOutput<GlobalSecondaryIndexWarmThroughput>('warmThroughput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalSecondaryIndexWarmThroughput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [GlobalSecondaryIndex] resource's state with the given [name] and [id].
  static GlobalSecondaryIndex get(
    String name,
    pulumi.Input<String> id, {
    GlobalSecondaryIndexState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GlobalSecondaryIndex._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GlobalSecondaryIndex._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/globalSecondaryIndex:GlobalSecondaryIndex',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    indexName = registerOutput<String>('indexName');
    keySchemas = registerOutput<List<GlobalSecondaryIndexKeySchema>>('keySchemas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GlobalSecondaryIndexKeySchema>(guardedValue, (value) => GlobalSecondaryIndexKeySchema.fromMap((value as Map).cast<String, dynamic>())); });
    onDemandThroughput = registerOutput<GlobalSecondaryIndexOnDemandThroughput?>('onDemandThroughput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalSecondaryIndexOnDemandThroughput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    projection = registerOutput<GlobalSecondaryIndexProjection?>('projection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalSecondaryIndexProjection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisionedThroughput = registerOutput<GlobalSecondaryIndexProvisionedThroughput?>('provisionedThroughput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalSecondaryIndexProvisionedThroughput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tableName = registerOutput<String>('tableName');
    timeouts = registerOutput<GlobalSecondaryIndexTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalSecondaryIndexTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    warmThroughput = registerOutput<GlobalSecondaryIndexWarmThroughput>('warmThroughput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalSecondaryIndexWarmThroughput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [GlobalSecondaryIndex] resource.
  GlobalSecondaryIndex.reference(String urn)
    : super(
        'aws:dynamodb/globalSecondaryIndex:GlobalSecondaryIndex',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    indexName = registerOutput<String>('indexName');
    keySchemas = registerOutput<List<GlobalSecondaryIndexKeySchema>>('keySchemas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GlobalSecondaryIndexKeySchema>(guardedValue, (value) => GlobalSecondaryIndexKeySchema.fromMap((value as Map).cast<String, dynamic>())); });
    onDemandThroughput = registerOutput<GlobalSecondaryIndexOnDemandThroughput?>('onDemandThroughput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalSecondaryIndexOnDemandThroughput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    projection = registerOutput<GlobalSecondaryIndexProjection?>('projection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalSecondaryIndexProjection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisionedThroughput = registerOutput<GlobalSecondaryIndexProvisionedThroughput?>('provisionedThroughput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalSecondaryIndexProvisionedThroughput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tableName = registerOutput<String>('tableName');
    timeouts = registerOutput<GlobalSecondaryIndexTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalSecondaryIndexTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    warmThroughput = registerOutput<GlobalSecondaryIndexWarmThroughput>('warmThroughput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalSecondaryIndexWarmThroughput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
