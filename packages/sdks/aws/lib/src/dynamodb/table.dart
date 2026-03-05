import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_args.dart';
import 'table_global_table_witness.dart';
import 'table_import_table.dart';
import 'table_on_demand_throughput.dart';
import 'table_point_in_time_recovery.dart';
import 'table_server_side_encryption.dart';
import 'table_state.dart';
import 'table_ttl.dart';
import 'table_warm_throughput.dart';

/// Provides a DynamoDB table resource.
///
/// &gt; **Note:** It is recommended to use [`ignoreChanges`](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) for `read_capacity` and/or `write_capacity` if there's `autoscaling policy` attached to the table.
///
/// &gt; **Note:** When using aws.dynamodb.TableReplica with this resource, use `lifecycle` `ignore_changes` for `replica`, _e.g._, `lifecycle { ignore_changes = [replica] }`.
///
/// &gt; **Note:** If autoscaling creates drift for your `global_secondary_index` blocks and/or more granular `lifecycle` management for GSIs, we recommend using the new **experimental** resource `aws.dynamodb.GlobalSecondaryIndex`.
///
/// ## DynamoDB Table attributes
///
/// Only define attributes on the table object that are going to be used as:
///
/// * Table hash key or range key
/// * LSI or GSI hash key or range key
///
/// The DynamoDB API expects attribute structure (name and type) to be passed along when creating or updating GSI/LSIs or creating the initial table. In these cases it expects the Hash / Range keys to be provided. Because these get re-used in numerous places (i.e the table's range key could be a part of one or more GSIs), they are stored on the table object to prevent duplication and increase consistency. If you add attributes here that are not used in these scenarios it can cause an infinite loop in planning.
///
/// &gt; **Note:** When using the `aws.dynamodb.GlobalSecondaryIndex` resource, you do not need to define the attributes for externally managed GSIs in the `aws.dynamodb.Table` resource.
///
/// ## Example Usage
///
/// ### Basic Example
///
/// The following dynamodb table description models the table and GSI shown in the [AWS SDK example documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.html)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const basic_dynamodb_table = new aws.dynamodb.Table("basic-dynamodb-table", {
///     name: "GameScores",
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
///         {
///             name: "TopScore",
///             type: "N",
///         },
///     ],
///     ttl: {
///         attributeName: "TimeToExist",
///         enabled: true,
///     },
///     globalSecondaryIndexes: [{
///         name: "GameTitleIndex",
///         hashKey: "GameTitle",
///         rangeKey: "TopScore",
///         writeCapacity: 10,
///         readCapacity: 10,
///         projectionType: "INCLUDE",
///         nonKeyAttributes: ["UserId"],
///     }],
///     tags: {
///         Name: "dynamodb-table-1",
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// basic_dynamodb_table = aws.dynamodb.Table("basic-dynamodb-table",
///     name="GameScores",
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
///         {
///             "name": "TopScore",
///             "type": "N",
///         },
///     ],
///     ttl={
///         "attribute_name": "TimeToExist",
///         "enabled": True,
///     },
///     global_secondary_indexes=[{
///         "name": "GameTitleIndex",
///         "hash_key": "GameTitle",
///         "range_key": "TopScore",
///         "write_capacity": 10,
///         "read_capacity": 10,
///         "projection_type": "INCLUDE",
///         "non_key_attributes": ["UserId"],
///     }],
///     tags={
///         "Name": "dynamodb-table-1",
///         "Environment": "production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic_dynamodb_table = new Aws.DynamoDB.Table("basic-dynamodb-table", new()
///     {
///         Name = "GameScores",
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
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "TopScore",
///                 Type = "N",
///             },
///         },
///         Ttl = new Aws.DynamoDB.Inputs.TableTtlArgs
///         {
///             AttributeName = "TimeToExist",
///             Enabled = true,
///         },
///         GlobalSecondaryIndexes = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableGlobalSecondaryIndexArgs
///             {
///                 Name = "GameTitleIndex",
///                 HashKey = "GameTitle",
///                 RangeKey = "TopScore",
///                 WriteCapacity = 10,
///                 ReadCapacity = 10,
///                 ProjectionType = "INCLUDE",
///                 NonKeyAttributes = new[]
///                 {
///                     "UserId",
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Name", "dynamodb-table-1" },
///             { "Environment", "production" },
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
/// 		_, err := dynamodb.NewTable(ctx, "basic-dynamodb-table", &dynamodb.TableArgs{
/// 			Name:          pulumi.String("GameScores"),
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
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("TopScore"),
/// 					Type: pulumi.String("N"),
/// 				},
/// 			},
/// 			Ttl: &dynamodb.TableTtlArgs{
/// 				AttributeName: pulumi.String("TimeToExist"),
/// 				Enabled:       pulumi.Bool(true),
/// 			},
/// 			GlobalSecondaryIndexes: dynamodb.TableGlobalSecondaryIndexArray{
/// 				&dynamodb.TableGlobalSecondaryIndexArgs{
/// 					Name:           pulumi.String("GameTitleIndex"),
/// 					HashKey:        pulumi.String("GameTitle"),
/// 					RangeKey:       pulumi.String("TopScore"),
/// 					WriteCapacity:  pulumi.Int(10),
/// 					ReadCapacity:   pulumi.Int(10),
/// 					ProjectionType: pulumi.String("INCLUDE"),
/// 					NonKeyAttributes: pulumi.StringArray{
/// 						pulumi.String("UserId"),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name":        pulumi.String("dynamodb-table-1"),
/// 				"Environment": pulumi.String("production"),
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
/// import com.pulumi.aws.dynamodb.inputs.TableTtlArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableGlobalSecondaryIndexArgs;
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
///         var basic_dynamodb_table = new Table("basic-dynamodb-table", TableArgs.builder()
///             .name("GameScores")
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
///                     .build(),
///                 TableAttributeArgs.builder()
///                     .name("TopScore")
///                     .type("N")
///                     .build())
///             .ttl(TableTtlArgs.builder()
///                 .attributeName("TimeToExist")
///                 .enabled(true)
///                 .build())
///             .globalSecondaryIndexes(TableGlobalSecondaryIndexArgs.builder()
///                 .name("GameTitleIndex")
///                 .hashKey("GameTitle")
///                 .rangeKey("TopScore")
///                 .writeCapacity(10)
///                 .readCapacity(10)
///                 .projectionType("INCLUDE")
///                 .nonKeyAttributes("UserId")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "dynamodb-table-1"),
///                 Map.entry("Environment", "production")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic-dynamodb-table:
///     type: aws:dynamodb:Table
///     properties:
///       name: GameScores
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
///         - name: TopScore
///           type: N
///       ttl:
///         attributeName: TimeToExist
///         enabled: true
///       globalSecondaryIndexes:
///         - name: GameTitleIndex
///           hashKey: GameTitle
///           rangeKey: TopScore
///           writeCapacity: 10
///           readCapacity: 10
///           projectionType: INCLUDE
///           nonKeyAttributes:
///             - UserId
///       tags:
///         Name: dynamodb-table-1
///         Environment: production
/// ```
///
///
/// ### Basic Example containing Global Secondary Indexes using Multi-attribute keys pattern
///
/// The following dynamodb table description models the table and GSIs shown in the [AWS SDK example documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.DesignPattern.MultiAttributeKeys.html)
///
/// &gt; **Note:** Multi-attribute keys for GSIs use the `key_schema` block instead of `hash_key`/`range_key`. The `hash_key` and `range_key` arguments are deprecated in favor of `key_schema`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const basic_dynamodb_table = new aws.dynamodb.Table("basic-dynamodb-table", {
///     name: "TournamentMatches",
///     billingMode: "PROVISIONED",
///     readCapacity: 20,
///     writeCapacity: 20,
///     hashKey: "matchId",
///     attributes: [
///         {
///             name: "matchId",
///             type: "S",
///         },
///         {
///             name: "tournamentId",
///             type: "S",
///         },
///         {
///             name: "region",
///             type: "S",
///         },
///         {
///             name: "round",
///             type: "S",
///         },
///         {
///             name: "bracket",
///             type: "S",
///         },
///         {
///             name: "playerId",
///             type: "N",
///         },
///         {
///             name: "matchDate",
///             type: "S",
///         },
///     ],
///     ttl: {
///         attributeName: "TimeToExist",
///         enabled: true,
///     },
///     globalSecondaryIndexes: [
///         {
///             name: "TournamentRegionIndex",
///             keySchemas: [
///                 {
///                     attributeName: "tournamentId",
///                     keyType: "HASH",
///                 },
///                 {
///                     attributeName: "region",
///                     keyType: "HASH",
///                 },
///                 {
///                     attributeName: "round",
///                     keyType: "RANGE",
///                 },
///                 {
///                     attributeName: "bracket",
///                     keyType: "RANGE",
///                 },
///                 {
///                     attributeName: "matchId",
///                     keyType: "RANGE",
///                 },
///             ],
///             writeCapacity: 10,
///             readCapacity: 10,
///             projectionType: "ALL",
///         },
///         {
///             name: "PlayerMatchHistoryIndex",
///             keySchemas: [
///                 {
///                     attributeName: "playerId",
///                     keyType: "HASH",
///                 },
///                 {
///                     attributeName: "matchDate",
///                     keyType: "RANGE",
///                 },
///                 {
///                     attributeName: "round",
///                     keyType: "RANGE",
///                 },
///             ],
///             writeCapacity: 10,
///             readCapacity: 10,
///             projectionType: "ALL",
///         },
///     ],
///     tags: {
///         Name: "dynamodb-table-1",
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// basic_dynamodb_table = aws.dynamodb.Table("basic-dynamodb-table",
///     name="TournamentMatches",
///     billing_mode="PROVISIONED",
///     read_capacity=20,
///     write_capacity=20,
///     hash_key="matchId",
///     attributes=[
///         {
///             "name": "matchId",
///             "type": "S",
///         },
///         {
///             "name": "tournamentId",
///             "type": "S",
///         },
///         {
///             "name": "region",
///             "type": "S",
///         },
///         {
///             "name": "round",
///             "type": "S",
///         },
///         {
///             "name": "bracket",
///             "type": "S",
///         },
///         {
///             "name": "playerId",
///             "type": "N",
///         },
///         {
///             "name": "matchDate",
///             "type": "S",
///         },
///     ],
///     ttl={
///         "attribute_name": "TimeToExist",
///         "enabled": True,
///     },
///     global_secondary_indexes=[
///         {
///             "name": "TournamentRegionIndex",
///             "key_schemas": [
///                 {
///                     "attribute_name": "tournamentId",
///                     "key_type": "HASH",
///                 },
///                 {
///                     "attribute_name": "region",
///                     "key_type": "HASH",
///                 },
///                 {
///                     "attribute_name": "round",
///                     "key_type": "RANGE",
///                 },
///                 {
///                     "attribute_name": "bracket",
///                     "key_type": "RANGE",
///                 },
///                 {
///                     "attribute_name": "matchId",
///                     "key_type": "RANGE",
///                 },
///             ],
///             "write_capacity": 10,
///             "read_capacity": 10,
///             "projection_type": "ALL",
///         },
///         {
///             "name": "PlayerMatchHistoryIndex",
///             "key_schemas": [
///                 {
///                     "attribute_name": "playerId",
///                     "key_type": "HASH",
///                 },
///                 {
///                     "attribute_name": "matchDate",
///                     "key_type": "RANGE",
///                 },
///                 {
///                     "attribute_name": "round",
///                     "key_type": "RANGE",
///                 },
///             ],
///             "write_capacity": 10,
///             "read_capacity": 10,
///             "projection_type": "ALL",
///         },
///     ],
///     tags={
///         "Name": "dynamodb-table-1",
///         "Environment": "production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic_dynamodb_table = new Aws.DynamoDB.Table("basic-dynamodb-table", new()
///     {
///         Name = "TournamentMatches",
///         BillingMode = "PROVISIONED",
///         ReadCapacity = 20,
///         WriteCapacity = 20,
///         HashKey = "matchId",
///         Attributes = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "matchId",
///                 Type = "S",
///             },
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "tournamentId",
///                 Type = "S",
///             },
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "region",
///                 Type = "S",
///             },
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "round",
///                 Type = "S",
///             },
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "bracket",
///                 Type = "S",
///             },
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "playerId",
///                 Type = "N",
///             },
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "matchDate",
///                 Type = "S",
///             },
///         },
///         Ttl = new Aws.DynamoDB.Inputs.TableTtlArgs
///         {
///             AttributeName = "TimeToExist",
///             Enabled = true,
///         },
///         GlobalSecondaryIndexes = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableGlobalSecondaryIndexArgs
///             {
///                 Name = "TournamentRegionIndex",
///                 KeySchemas = new[]
///                 {
///                     new Aws.DynamoDB.Inputs.TableGlobalSecondaryIndexKeySchemaArgs
///                     {
///                         AttributeName = "tournamentId",
///                         KeyType = "HASH",
///                     },
///                     new Aws.DynamoDB.Inputs.TableGlobalSecondaryIndexKeySchemaArgs
///                     {
///                         AttributeName = "region",
///                         KeyType = "HASH",
///                     },
///                     new Aws.DynamoDB.Inputs.TableGlobalSecondaryIndexKeySchemaArgs
///                     {
///                         AttributeName = "round",
///                         KeyType = "RANGE",
///                     },
///                     new Aws.DynamoDB.Inputs.TableGlobalSecondaryIndexKeySchemaArgs
///                     {
///                         AttributeName = "bracket",
///                         KeyType = "RANGE",
///                     },
///                     new Aws.DynamoDB.Inputs.TableGlobalSecondaryIndexKeySchemaArgs
///                     {
///                         AttributeName = "matchId",
///                         KeyType = "RANGE",
///                     },
///                 },
///                 WriteCapacity = 10,
///                 ReadCapacity = 10,
///                 ProjectionType = "ALL",
///             },
///             new Aws.DynamoDB.Inputs.TableGlobalSecondaryIndexArgs
///             {
///                 Name = "PlayerMatchHistoryIndex",
///                 KeySchemas = new[]
///                 {
///                     new Aws.DynamoDB.Inputs.TableGlobalSecondaryIndexKeySchemaArgs
///                     {
///                         AttributeName = "playerId",
///                         KeyType = "HASH",
///                     },
///                     new Aws.DynamoDB.Inputs.TableGlobalSecondaryIndexKeySchemaArgs
///                     {
///                         AttributeName = "matchDate",
///                         KeyType = "RANGE",
///                     },
///                     new Aws.DynamoDB.Inputs.TableGlobalSecondaryIndexKeySchemaArgs
///                     {
///                         AttributeName = "round",
///                         KeyType = "RANGE",
///                     },
///                 },
///                 WriteCapacity = 10,
///                 ReadCapacity = 10,
///                 ProjectionType = "ALL",
///             },
///         },
///         Tags =
///         {
///             { "Name", "dynamodb-table-1" },
///             { "Environment", "production" },
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
/// 		_, err := dynamodb.NewTable(ctx, "basic-dynamodb-table", &dynamodb.TableArgs{
/// 			Name:          pulumi.String("TournamentMatches"),
/// 			BillingMode:   pulumi.String("PROVISIONED"),
/// 			ReadCapacity:  pulumi.Int(20),
/// 			WriteCapacity: pulumi.Int(20),
/// 			HashKey:       pulumi.String("matchId"),
/// 			Attributes: dynamodb.TableAttributeArray{
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("matchId"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("tournamentId"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("region"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("round"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("bracket"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("playerId"),
/// 					Type: pulumi.String("N"),
/// 				},
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("matchDate"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 			},
/// 			Ttl: &dynamodb.TableTtlArgs{
/// 				AttributeName: pulumi.String("TimeToExist"),
/// 				Enabled:       pulumi.Bool(true),
/// 			},
/// 			GlobalSecondaryIndexes: dynamodb.TableGlobalSecondaryIndexArray{
/// 				&dynamodb.TableGlobalSecondaryIndexArgs{
/// 					Name: pulumi.String("TournamentRegionIndex"),
/// 					KeySchemas: dynamodb.TableGlobalSecondaryIndexKeySchemaArray{
/// 						&dynamodb.TableGlobalSecondaryIndexKeySchemaArgs{
/// 							AttributeName: pulumi.String("tournamentId"),
/// 							KeyType:       pulumi.String("HASH"),
/// 						},
/// 						&dynamodb.TableGlobalSecondaryIndexKeySchemaArgs{
/// 							AttributeName: pulumi.String("region"),
/// 							KeyType:       pulumi.String("HASH"),
/// 						},
/// 						&dynamodb.TableGlobalSecondaryIndexKeySchemaArgs{
/// 							AttributeName: pulumi.String("round"),
/// 							KeyType:       pulumi.String("RANGE"),
/// 						},
/// 						&dynamodb.TableGlobalSecondaryIndexKeySchemaArgs{
/// 							AttributeName: pulumi.String("bracket"),
/// 							KeyType:       pulumi.String("RANGE"),
/// 						},
/// 						&dynamodb.TableGlobalSecondaryIndexKeySchemaArgs{
/// 							AttributeName: pulumi.String("matchId"),
/// 							KeyType:       pulumi.String("RANGE"),
/// 						},
/// 					},
/// 					WriteCapacity:  pulumi.Int(10),
/// 					ReadCapacity:   pulumi.Int(10),
/// 					ProjectionType: pulumi.String("ALL"),
/// 				},
/// 				&dynamodb.TableGlobalSecondaryIndexArgs{
/// 					Name: pulumi.String("PlayerMatchHistoryIndex"),
/// 					KeySchemas: dynamodb.TableGlobalSecondaryIndexKeySchemaArray{
/// 						&dynamodb.TableGlobalSecondaryIndexKeySchemaArgs{
/// 							AttributeName: pulumi.String("playerId"),
/// 							KeyType:       pulumi.String("HASH"),
/// 						},
/// 						&dynamodb.TableGlobalSecondaryIndexKeySchemaArgs{
/// 							AttributeName: pulumi.String("matchDate"),
/// 							KeyType:       pulumi.String("RANGE"),
/// 						},
/// 						&dynamodb.TableGlobalSecondaryIndexKeySchemaArgs{
/// 							AttributeName: pulumi.String("round"),
/// 							KeyType:       pulumi.String("RANGE"),
/// 						},
/// 					},
/// 					WriteCapacity:  pulumi.Int(10),
/// 					ReadCapacity:   pulumi.Int(10),
/// 					ProjectionType: pulumi.String("ALL"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name":        pulumi.String("dynamodb-table-1"),
/// 				"Environment": pulumi.String("production"),
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
/// import com.pulumi.aws.dynamodb.inputs.TableTtlArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableGlobalSecondaryIndexArgs;
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
///         var basic_dynamodb_table = new Table("basic-dynamodb-table", TableArgs.builder()
///             .name("TournamentMatches")
///             .billingMode("PROVISIONED")
///             .readCapacity(20)
///             .writeCapacity(20)
///             .hashKey("matchId")
///             .attributes(
///                 TableAttributeArgs.builder()
///                     .name("matchId")
///                     .type("S")
///                     .build(),
///                 TableAttributeArgs.builder()
///                     .name("tournamentId")
///                     .type("S")
///                     .build(),
///                 TableAttributeArgs.builder()
///                     .name("region")
///                     .type("S")
///                     .build(),
///                 TableAttributeArgs.builder()
///                     .name("round")
///                     .type("S")
///                     .build(),
///                 TableAttributeArgs.builder()
///                     .name("bracket")
///                     .type("S")
///                     .build(),
///                 TableAttributeArgs.builder()
///                     .name("playerId")
///                     .type("N")
///                     .build(),
///                 TableAttributeArgs.builder()
///                     .name("matchDate")
///                     .type("S")
///                     .build())
///             .ttl(TableTtlArgs.builder()
///                 .attributeName("TimeToExist")
///                 .enabled(true)
///                 .build())
///             .globalSecondaryIndexes(
///                 TableGlobalSecondaryIndexArgs.builder()
///                     .name("TournamentRegionIndex")
///                     .keySchemas(
///                         TableGlobalSecondaryIndexKeySchemaArgs.builder()
///                             .attributeName("tournamentId")
///                             .keyType("HASH")
///                             .build(),
///                         TableGlobalSecondaryIndexKeySchemaArgs.builder()
///                             .attributeName("region")
///                             .keyType("HASH")
///                             .build(),
///                         TableGlobalSecondaryIndexKeySchemaArgs.builder()
///                             .attributeName("round")
///                             .keyType("RANGE")
///                             .build(),
///                         TableGlobalSecondaryIndexKeySchemaArgs.builder()
///                             .attributeName("bracket")
///                             .keyType("RANGE")
///                             .build(),
///                         TableGlobalSecondaryIndexKeySchemaArgs.builder()
///                             .attributeName("matchId")
///                             .keyType("RANGE")
///                             .build())
///                     .writeCapacity(10)
///                     .readCapacity(10)
///                     .projectionType("ALL")
///                     .build(),
///                 TableGlobalSecondaryIndexArgs.builder()
///                     .name("PlayerMatchHistoryIndex")
///                     .keySchemas(
///                         TableGlobalSecondaryIndexKeySchemaArgs.builder()
///                             .attributeName("playerId")
///                             .keyType("HASH")
///                             .build(),
///                         TableGlobalSecondaryIndexKeySchemaArgs.builder()
///                             .attributeName("matchDate")
///                             .keyType("RANGE")
///                             .build(),
///                         TableGlobalSecondaryIndexKeySchemaArgs.builder()
///                             .attributeName("round")
///                             .keyType("RANGE")
///                             .build())
///                     .writeCapacity(10)
///                     .readCapacity(10)
///                     .projectionType("ALL")
///                     .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "dynamodb-table-1"),
///                 Map.entry("Environment", "production")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic-dynamodb-table:
///     type: aws:dynamodb:Table
///     properties:
///       name: TournamentMatches
///       billingMode: PROVISIONED
///       readCapacity: 20
///       writeCapacity: 20
///       hashKey: matchId
///       attributes:
///         - name: matchId
///           type: S
///         - name: tournamentId
///           type: S
///         - name: region
///           type: S
///         - name: round
///           type: S
///         - name: bracket
///           type: S
///         - name: playerId
///           type: N
///         - name: matchDate
///           type: S
///       ttl:
///         attributeName: TimeToExist
///         enabled: true
///       globalSecondaryIndexes:
///         - name: TournamentRegionIndex
///           keySchemas:
///             - attributeName: tournamentId
///               keyType: HASH
///             - attributeName: region
///               keyType: HASH
///             - attributeName: round
///               keyType: RANGE
///             - attributeName: bracket
///               keyType: RANGE
///             - attributeName: matchId
///               keyType: RANGE
///           writeCapacity: 10
///           readCapacity: 10
///           projectionType: ALL
///         - name: PlayerMatchHistoryIndex
///           keySchemas:
///             - attributeName: playerId
///               keyType: HASH
///             - attributeName: matchDate
///               keyType: RANGE
///             - attributeName: round
///               keyType: RANGE
///           writeCapacity: 10
///           readCapacity: 10
///           projectionType: ALL
///       tags:
///         Name: dynamodb-table-1
///         Environment: production
/// ```
///
///
/// ### Global Tables
///
/// This resource implements support for [DynamoDB Global Tables V2 (version 2019.11.21)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) via `replica` configuration blocks. For working with [DynamoDB Global Tables V1 (version 2017.11.29)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html), see the `aws.dynamodb.GlobalTable` resource.
///
/// &gt; **Note:** aws.dynamodb.TableReplica is an alternate way of configuring Global Tables. Do not use `replica` configuration blocks of `aws.dynamodb.Table` together with aws_dynamodb_table_replica.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dynamodb.Table("example", {
///     name: "example",
///     hashKey: "TestTableHashKey",
///     billingMode: "PAY_PER_REQUEST",
///     streamEnabled: true,
///     streamViewType: "NEW_AND_OLD_IMAGES",
///     attributes: [{
///         name: "TestTableHashKey",
///         type: "S",
///     }],
///     replicas: [
///         {
///             regionName: "us-east-2",
///         },
///         {
///             regionName: "us-west-2",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dynamodb.Table("example",
///     name="example",
///     hash_key="TestTableHashKey",
///     billing_mode="PAY_PER_REQUEST",
///     stream_enabled=True,
///     stream_view_type="NEW_AND_OLD_IMAGES",
///     attributes=[{
///         "name": "TestTableHashKey",
///         "type": "S",
///     }],
///     replicas=[
///         {
///             "region_name": "us-east-2",
///         },
///         {
///             "region_name": "us-west-2",
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
///         Name = "example",
///         HashKey = "TestTableHashKey",
///         BillingMode = "PAY_PER_REQUEST",
///         StreamEnabled = true,
///         StreamViewType = "NEW_AND_OLD_IMAGES",
///         Attributes = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "TestTableHashKey",
///                 Type = "S",
///             },
///         },
///         Replicas = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableReplicaArgs
///             {
///                 RegionName = "us-east-2",
///             },
///             new Aws.DynamoDB.Inputs.TableReplicaArgs
///             {
///                 RegionName = "us-west-2",
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
/// 			Name:           pulumi.String("example"),
/// 			HashKey:        pulumi.String("TestTableHashKey"),
/// 			BillingMode:    pulumi.String("PAY_PER_REQUEST"),
/// 			StreamEnabled:  pulumi.Bool(true),
/// 			StreamViewType: pulumi.String("NEW_AND_OLD_IMAGES"),
/// 			Attributes: dynamodb.TableAttributeArray{
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("TestTableHashKey"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 			},
/// 			Replicas: dynamodb.TableReplicaTypeArray{
/// 				&dynamodb.TableReplicaTypeArgs{
/// 					RegionName: pulumi.String("us-east-2"),
/// 				},
/// 				&dynamodb.TableReplicaTypeArgs{
/// 					RegionName: pulumi.String("us-west-2"),
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
/// import com.pulumi.aws.dynamodb.inputs.TableReplicaArgs;
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
///             .name("example")
///             .hashKey("TestTableHashKey")
///             .billingMode("PAY_PER_REQUEST")
///             .streamEnabled(true)
///             .streamViewType("NEW_AND_OLD_IMAGES")
///             .attributes(TableAttributeArgs.builder()
///                 .name("TestTableHashKey")
///                 .type("S")
///                 .build())
///             .replicas(
///                 TableReplicaArgs.builder()
///                     .regionName("us-east-2")
///                     .build(),
///                 TableReplicaArgs.builder()
///                     .regionName("us-west-2")
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
///       name: example
///       hashKey: TestTableHashKey
///       billingMode: PAY_PER_REQUEST
///       streamEnabled: true
///       streamViewType: NEW_AND_OLD_IMAGES
///       attributes:
///         - name: TestTableHashKey
///           type: S
///       replicas:
///         - regionName: us-east-2
///         - regionName: us-west-2
/// ```
///
///
/// ### Global Tables with Multi-Region Strong Consistency
///
/// A global table configured for Multi-Region strong consistency (MRSC) provides the ability to perform a strongly consistent read with multi-Region scope. Performing a strongly consistent read on an MRSC table ensures you're always reading the latest version of an item, irrespective of the Region in which you're performing the read.
///
/// You can configure a MRSC global table with three replicas, or with two replicas and one witness. A witness is a component of a MRSC global table that contains data written to global table replicas, and provides an optional alternative to a full replica while supporting MRSC's availability architecture. You cannot perform read or write operations on a witness. A witness is located in a different Region than the two replicas.
///
/// **Note** Please see detailed information, restrictions, caveats etc on the [AWS Support Page](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/multi-region-strong-consistency-gt.html).
///
/// Consistency Mode (`consistency_mode`) on the embedded `replica` allows you to configure consistency mode for Global Tables.
///
/// ##### Consistency mode with 3 Replicas
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dynamodb.Table("example", {
///     name: "example",
///     hashKey: "TestTableHashKey",
///     billingMode: "PAY_PER_REQUEST",
///     streamEnabled: true,
///     streamViewType: "NEW_AND_OLD_IMAGES",
///     attributes: [{
///         name: "TestTableHashKey",
///         type: "S",
///     }],
///     replicas: [
///         {
///             regionName: "us-east-2",
///             consistencyMode: "STRONG",
///         },
///         {
///             regionName: "us-west-2",
///             consistencyMode: "STRONG",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dynamodb.Table("example",
///     name="example",
///     hash_key="TestTableHashKey",
///     billing_mode="PAY_PER_REQUEST",
///     stream_enabled=True,
///     stream_view_type="NEW_AND_OLD_IMAGES",
///     attributes=[{
///         "name": "TestTableHashKey",
///         "type": "S",
///     }],
///     replicas=[
///         {
///             "region_name": "us-east-2",
///             "consistency_mode": "STRONG",
///         },
///         {
///             "region_name": "us-west-2",
///             "consistency_mode": "STRONG",
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
///         Name = "example",
///         HashKey = "TestTableHashKey",
///         BillingMode = "PAY_PER_REQUEST",
///         StreamEnabled = true,
///         StreamViewType = "NEW_AND_OLD_IMAGES",
///         Attributes = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "TestTableHashKey",
///                 Type = "S",
///             },
///         },
///         Replicas = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableReplicaArgs
///             {
///                 RegionName = "us-east-2",
///                 ConsistencyMode = "STRONG",
///             },
///             new Aws.DynamoDB.Inputs.TableReplicaArgs
///             {
///                 RegionName = "us-west-2",
///                 ConsistencyMode = "STRONG",
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
/// 			Name:           pulumi.String("example"),
/// 			HashKey:        pulumi.String("TestTableHashKey"),
/// 			BillingMode:    pulumi.String("PAY_PER_REQUEST"),
/// 			StreamEnabled:  pulumi.Bool(true),
/// 			StreamViewType: pulumi.String("NEW_AND_OLD_IMAGES"),
/// 			Attributes: dynamodb.TableAttributeArray{
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("TestTableHashKey"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 			},
/// 			Replicas: dynamodb.TableReplicaTypeArray{
/// 				&dynamodb.TableReplicaTypeArgs{
/// 					RegionName:      pulumi.String("us-east-2"),
/// 					ConsistencyMode: pulumi.String("STRONG"),
/// 				},
/// 				&dynamodb.TableReplicaTypeArgs{
/// 					RegionName:      pulumi.String("us-west-2"),
/// 					ConsistencyMode: pulumi.String("STRONG"),
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
/// import com.pulumi.aws.dynamodb.inputs.TableReplicaArgs;
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
///             .name("example")
///             .hashKey("TestTableHashKey")
///             .billingMode("PAY_PER_REQUEST")
///             .streamEnabled(true)
///             .streamViewType("NEW_AND_OLD_IMAGES")
///             .attributes(TableAttributeArgs.builder()
///                 .name("TestTableHashKey")
///                 .type("S")
///                 .build())
///             .replicas(
///                 TableReplicaArgs.builder()
///                     .regionName("us-east-2")
///                     .consistencyMode("STRONG")
///                     .build(),
///                 TableReplicaArgs.builder()
///                     .regionName("us-west-2")
///                     .consistencyMode("STRONG")
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
///       name: example
///       hashKey: TestTableHashKey
///       billingMode: PAY_PER_REQUEST
///       streamEnabled: true
///       streamViewType: NEW_AND_OLD_IMAGES
///       attributes:
///         - name: TestTableHashKey
///           type: S
///       replicas:
///         - regionName: us-east-2
///           consistencyMode: STRONG
///         - regionName: us-west-2
///           consistencyMode: STRONG
/// ```
///
///
/// ##### Consistency Mode with 2 Replicas and Witness Region
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dynamodb.Table("example", {
///     name: "example",
///     hashKey: "TestTableHashKey",
///     billingMode: "PAY_PER_REQUEST",
///     streamEnabled: true,
///     streamViewType: "NEW_AND_OLD_IMAGES",
///     attributes: [{
///         name: "TestTableHashKey",
///         type: "S",
///     }],
///     replicas: [{
///         regionName: "us-east-2",
///         consistencyMode: "STRONG",
///     }],
///     globalTableWitness: {
///         regionName: "us-west-2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dynamodb.Table("example",
///     name="example",
///     hash_key="TestTableHashKey",
///     billing_mode="PAY_PER_REQUEST",
///     stream_enabled=True,
///     stream_view_type="NEW_AND_OLD_IMAGES",
///     attributes=[{
///         "name": "TestTableHashKey",
///         "type": "S",
///     }],
///     replicas=[{
///         "region_name": "us-east-2",
///         "consistency_mode": "STRONG",
///     }],
///     global_table_witness={
///         "region_name": "us-west-2",
///     })
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
///         Name = "example",
///         HashKey = "TestTableHashKey",
///         BillingMode = "PAY_PER_REQUEST",
///         StreamEnabled = true,
///         StreamViewType = "NEW_AND_OLD_IMAGES",
///         Attributes = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "TestTableHashKey",
///                 Type = "S",
///             },
///         },
///         Replicas = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableReplicaArgs
///             {
///                 RegionName = "us-east-2",
///                 ConsistencyMode = "STRONG",
///             },
///         },
///         GlobalTableWitness = new Aws.DynamoDB.Inputs.TableGlobalTableWitnessArgs
///         {
///             RegionName = "us-west-2",
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
/// 			Name:           pulumi.String("example"),
/// 			HashKey:        pulumi.String("TestTableHashKey"),
/// 			BillingMode:    pulumi.String("PAY_PER_REQUEST"),
/// 			StreamEnabled:  pulumi.Bool(true),
/// 			StreamViewType: pulumi.String("NEW_AND_OLD_IMAGES"),
/// 			Attributes: dynamodb.TableAttributeArray{
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("TestTableHashKey"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 			},
/// 			Replicas: dynamodb.TableReplicaTypeArray{
/// 				&dynamodb.TableReplicaTypeArgs{
/// 					RegionName:      pulumi.String("us-east-2"),
/// 					ConsistencyMode: pulumi.String("STRONG"),
/// 				},
/// 			},
/// 			GlobalTableWitness: &dynamodb.TableGlobalTableWitnessArgs{
/// 				RegionName: pulumi.String("us-west-2"),
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
/// import com.pulumi.aws.dynamodb.inputs.TableReplicaArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableGlobalTableWitnessArgs;
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
///             .name("example")
///             .hashKey("TestTableHashKey")
///             .billingMode("PAY_PER_REQUEST")
///             .streamEnabled(true)
///             .streamViewType("NEW_AND_OLD_IMAGES")
///             .attributes(TableAttributeArgs.builder()
///                 .name("TestTableHashKey")
///                 .type("S")
///                 .build())
///             .replicas(TableReplicaArgs.builder()
///                 .regionName("us-east-2")
///                 .consistencyMode("STRONG")
///                 .build())
///             .globalTableWitness(TableGlobalTableWitnessArgs.builder()
///                 .regionName("us-west-2")
///                 .build())
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
///       name: example
///       hashKey: TestTableHashKey
///       billingMode: PAY_PER_REQUEST
///       streamEnabled: true
///       streamViewType: NEW_AND_OLD_IMAGES
///       attributes:
///         - name: TestTableHashKey
///           type: S
///       replicas:
///         - regionName: us-east-2
///           consistencyMode: STRONG
///       globalTableWitness:
///         regionName: us-west-2
/// ```
///
///
/// ### Replica Tagging
///
/// You can manage global table replicas' tags in various ways. This example shows using `replica.*.propagate_tags` for the first replica and the `aws.dynamodb.Tag` resource for the other.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const current = aws.getRegion({});
/// const alternate = aws.getRegion({});
/// const third = aws.getRegion({});
/// const example = new aws.dynamodb.Table("example", {
///     billingMode: "PAY_PER_REQUEST",
///     hashKey: "TestTableHashKey",
///     name: "example-13281",
///     streamEnabled: true,
///     streamViewType: "NEW_AND_OLD_IMAGES",
///     attributes: [{
///         name: "TestTableHashKey",
///         type: "S",
///     }],
///     replicas: [
///         {
///             regionName: alternate.then(alternate => alternate.name),
///         },
///         {
///             regionName: third.then(third => third.name),
///             propagateTags: true,
///         },
///     ],
///     tags: {
///         Architect: "Eleanor",
///         Zone: "SW",
///     },
/// });
/// const exampleTag = new aws.dynamodb.Tag("example", {
///     resourceArn: pulumi.all([example.arn, current, alternate]).apply(([arn, current, alternate]) => std.replaceOutput({
///         text: arn,
///         search: current.region,
///         replace: alternate.name,
///     })).apply(invoke => invoke.result),
///     key: "Architect",
///     value: "Gigi",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// current = aws.get_region()
/// alternate = aws.get_region()
/// third = aws.get_region()
/// example = aws.dynamodb.Table("example",
///     billing_mode="PAY_PER_REQUEST",
///     hash_key="TestTableHashKey",
///     name="example-13281",
///     stream_enabled=True,
///     stream_view_type="NEW_AND_OLD_IMAGES",
///     attributes=[{
///         "name": "TestTableHashKey",
///         "type": "S",
///     }],
///     replicas=[
///         {
///             "region_name": alternate.name,
///         },
///         {
///             "region_name": third.name,
///             "propagate_tags": True,
///         },
///     ],
///     tags={
///         "Architect": "Eleanor",
///         "Zone": "SW",
///     })
/// example_tag = aws.dynamodb.Tag("example",
///     resource_arn=example.arn.apply(lambda arn: std.replace(text=arn,
///         search=current.region,
///         replace=alternate.name)).apply(lambda invoke: invoke.result),
///     key="Architect",
///     value="Gigi")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var alternate = Aws.GetRegion.Invoke();
///
///     var third = Aws.GetRegion.Invoke();
///
///     var example = new Aws.DynamoDB.Table("example", new()
///     {
///         BillingMode = "PAY_PER_REQUEST",
///         HashKey = "TestTableHashKey",
///         Name = "example-13281",
///         StreamEnabled = true,
///         StreamViewType = "NEW_AND_OLD_IMAGES",
///         Attributes = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "TestTableHashKey",
///                 Type = "S",
///             },
///         },
///         Replicas = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableReplicaArgs
///             {
///                 RegionName = alternate.Apply(getRegionResult => getRegionResult.Name),
///             },
///             new Aws.DynamoDB.Inputs.TableReplicaArgs
///             {
///                 RegionName = third.Apply(getRegionResult => getRegionResult.Name),
///                 PropagateTags = true,
///             },
///         },
///         Tags =
///         {
///             { "Architect", "Eleanor" },
///             { "Zone", "SW" },
///         },
///     });
///
///     var exampleTag = new Aws.DynamoDB.Tag("example", new()
///     {
///         ResourceArn = Output.Tuple(example.Arn, current, alternate).Apply(values =>
///         {
///             var arn = values.Item1;
///             var current = values.Item2;
///             var alternate = values.Item3;
///             return Std.Replace.Invoke(new()
///             {
///                 Text = arn,
///                 Search = current.Apply(getRegionResult => getRegionResult.Region),
///                 Replace = alternate.Apply(getRegionResult => getRegionResult.Name),
///             });
///         }).Apply(invoke => invoke.Result),
///         Key = "Architect",
///         Value = "Gigi",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// alternate, err := aws.GetRegion(ctx, &aws.GetRegionArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// third, err := aws.GetRegion(ctx, &aws.GetRegionArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// example, err := dynamodb.NewTable(ctx, "example", &dynamodb.TableArgs{
/// BillingMode: pulumi.String("PAY_PER_REQUEST"),
/// HashKey: pulumi.String("TestTableHashKey"),
/// Name: pulumi.String("example-13281"),
/// StreamEnabled: pulumi.Bool(true),
/// StreamViewType: pulumi.String("NEW_AND_OLD_IMAGES"),
/// Attributes: dynamodb.TableAttributeArray{
/// &dynamodb.TableAttributeArgs{
/// Name: pulumi.String("TestTableHashKey"),
/// Type: pulumi.String("S"),
/// },
/// },
/// Replicas: dynamodb.TableReplicaTypeArray{
/// &dynamodb.TableReplicaTypeArgs{
/// RegionName: pulumi.String(alternate.Name),
/// },
/// &dynamodb.TableReplicaTypeArgs{
/// RegionName: pulumi.String(third.Name),
/// PropagateTags: pulumi.Bool(true),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Architect": pulumi.String("Eleanor"),
/// "Zone": pulumi.String("SW"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// invokeReplace, err := std.Replace(ctx, &std.ReplaceArgs{
/// Text: arn,
/// Search: current.Region,
/// Replace: alternate.Name,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = dynamodb.NewTag(ctx, "example", &dynamodb.TagArgs{
/// ResourceArn: pulumi.String(example.Arn.ApplyT(func(arn string) (std.ReplaceResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.ReplaceResultOutput).ApplyT(func(invoke std.ReplaceResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// Key: pulumi.String("Architect"),
/// Value: pulumi.String("Gigi"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.dynamodb.Table;
/// import com.pulumi.aws.dynamodb.TableArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableAttributeArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableReplicaArgs;
/// import com.pulumi.aws.dynamodb.Tag;
/// import com.pulumi.aws.dynamodb.TagArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ReplaceArgs;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var alternate = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var third = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var example = new Table("example", TableArgs.builder()
///             .billingMode("PAY_PER_REQUEST")
///             .hashKey("TestTableHashKey")
///             .name("example-13281")
///             .streamEnabled(true)
///             .streamViewType("NEW_AND_OLD_IMAGES")
///             .attributes(TableAttributeArgs.builder()
///                 .name("TestTableHashKey")
///                 .type("S")
///                 .build())
///             .replicas(
///                 TableReplicaArgs.builder()
///                     .regionName(alternate.name())
///                     .build(),
///                 TableReplicaArgs.builder()
///                     .regionName(third.name())
///                     .propagateTags(true)
///                     .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Architect", "Eleanor"),
///                 Map.entry("Zone", "SW")
///             ))
///             .build());
///
///         var exampleTag = new Tag("exampleTag", TagArgs.builder()
///             .resourceArn(example.arn().applyValue(_arn -> StdFunctions.replace(ReplaceArgs.builder()
///                 .text(_arn)
///                 .search(current.region())
///                 .replace(alternate.name())
///                 .build())).applyValue(_invoke -> _invoke.result()))
///             .key("Architect")
///             .value("Gigi")
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
///       billingMode: PAY_PER_REQUEST
///       hashKey: TestTableHashKey
///       name: example-13281
///       streamEnabled: true
///       streamViewType: NEW_AND_OLD_IMAGES
///       attributes:
///         - name: TestTableHashKey
///           type: S
///       replicas:
///         - regionName: ${alternate.name}
///         - regionName: ${third.name}
///           propagateTags: true
///       tags:
///         Architect: Eleanor
///         Zone: SW
///   exampleTag:
///     type: aws:dynamodb:Tag
///     name: example
///     properties:
///       resourceArn:
///         fn::invoke:
///           function: std:replace
///           arguments:
///             text: ${example.arn}
///             search: ${current.region}
///             replace: ${alternate.name}
///           return: result
///       key: Architect
///       value: Gigi
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   alternate:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   third:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DynamoDB tables using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/table:Table basic-dynamodb-table GameScores
/// ```
class Table extends pulumi.CustomResource {
  /// ARN of the table
  late final pulumi.Output<String> arn;
  /// Set of nested attribute definitions. Only required for `hash_key` and `range_key` attributes. See below.
  late final pulumi.Output<List<Map<String, dynamic>>> attributes;
  /// Controls how you are charged for read and write throughput and how you manage capacity. The valid values are `PROVISIONED` and `PAY_PER_REQUEST`. Defaults to `PROVISIONED`.
  late final pulumi.Output<String?> billingMode;
  /// Enables deletion protection for table. Defaults to `false`.
  late final pulumi.Output<bool?> deletionProtectionEnabled;
  /// Describe a GSI for the table; subject to the normal limits on the number of GSIs, projected attributes, etc. See below.
  late final pulumi.Output<List<Map<String, dynamic>>> globalSecondaryIndexes;
  /// Witness Region in a Multi-Region Strong Consistency deployment. **Note** This must be used alongside a single `replica` with `consistency_mode` set to `STRONG`. Other combinations will fail to provision. See below.
  late final pulumi.Output<TableGlobalTableWitness> globalTableWitness;
  /// Attribute to use as the hash (partition) key. Must also be defined as an `attribute`. See below.
  late final pulumi.Output<String> hashKey;
  /// Import Amazon S3 data into a new table. See below.
  late final pulumi.Output<TableImportTable?> importTable;
  /// Describe an LSI on the table; these can only be allocated _at creation_ so you cannot change this definition after you have created the resource. See below.
  late final pulumi.Output<List<Map<String, dynamic>>?> localSecondaryIndexes;
  /// Unique within a region name of the table.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Sets the maximum number of read and write units for the specified on-demand table. See below.
  late final pulumi.Output<TableOnDemandThroughput?> onDemandThroughput;
  /// Enable point-in-time recovery options. See below.
  late final pulumi.Output<TablePointInTimeRecovery> pointInTimeRecovery;
  /// Attribute to use as the range (sort) key. Must also be defined as an `attribute`, see below.
  late final pulumi.Output<String?> rangeKey;
  /// Number of read units for this table. If the `billing_mode` is `PROVISIONED`, this field is required.
  late final pulumi.Output<int> readCapacity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block(s) with [DynamoDB Global Tables V2 (version 2019.11.21)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) replication configurations. See below.
  late final pulumi.Output<List<Map<String, dynamic>>?> replicas;
  /// Time of the point-in-time recovery point to restore.
  late final pulumi.Output<String?> restoreDateTime;
  /// Name of the table to restore. Must match the name of an existing table.
  late final pulumi.Output<String?> restoreSourceName;
  /// ARN of the source table to restore. Must be supplied for cross-region restores.
  late final pulumi.Output<String?> restoreSourceTableArn;
  /// If set, restores table to the most recent point-in-time recovery point.
  late final pulumi.Output<bool?> restoreToLatestTime;
  /// Encryption at rest options. AWS DynamoDB tables are automatically encrypted at rest with an AWS-owned Customer Master Key if this argument isn't specified. Must be supplied for cross-region restores. See below.
  late final pulumi.Output<TableServerSideEncryption> serverSideEncryption;
  /// ARN of the Table Stream. Only available when `stream_enabled = true`
  late final pulumi.Output<String> streamArn;
  /// Whether Streams are enabled.
  late final pulumi.Output<bool?> streamEnabled;
  /// Timestamp, in ISO 8601 format, for this stream. Note that this timestamp is not a unique identifier for the stream on its own. However, the combination of AWS customer ID, table name and this field is guaranteed to be unique. It can be used for creating CloudWatch Alarms. Only available when `stream_enabled = true`.
  late final pulumi.Output<String> streamLabel;
  /// When an item in the table is modified, StreamViewType determines what information is written to the table's stream.
  /// Valid values are `KEYS_ONLY`, `NEW_IMAGE`, `OLD_IMAGE`, `NEW_AND_OLD_IMAGES`.
  /// Only valid when `stream_enabled` is true.
  late final pulumi.Output<String> streamViewType;
  /// Storage class of the table.
  /// Valid values are `STANDARD` and `STANDARD_INFREQUENT_ACCESS`.
  /// Default value is `STANDARD`.
  late final pulumi.Output<String?> tableClass;
  /// A map of tags to populate on the created table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block for TTL. See below.
  late final pulumi.Output<TableTtl> ttl;
  /// Sets the number of warm read and write units for the specified table. See below.
  late final pulumi.Output<TableWarmThroughput> warmThroughput;
  /// Number of write units for this table. If the `billing_mode` is `PROVISIONED`, this field is required.
  late final pulumi.Output<int> writeCapacity;

  /// Creates a new [Table].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Table]. {@macro pulumi_dynamodb_table_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Table(
    String name, {
    TableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/table:Table',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    attributes = registerOutput<List<Map<String, dynamic>>>('attributes');
    billingMode = registerOutput<String?>('billingMode');
    deletionProtectionEnabled = registerOutput<bool?>('deletionProtectionEnabled');
    globalSecondaryIndexes = registerOutput<List<Map<String, dynamic>>>('globalSecondaryIndexes');
    globalTableWitness = registerOutput<TableGlobalTableWitness>('globalTableWitness', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableGlobalTableWitness.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hashKey = registerOutput<String>('hashKey');
    importTable = registerOutput<TableImportTable?>('importTable', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableImportTable.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localSecondaryIndexes = registerOutput<List<Map<String, dynamic>>?>('localSecondaryIndexes');
    this.name = registerOutput<String>('name');
    onDemandThroughput = registerOutput<TableOnDemandThroughput?>('onDemandThroughput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableOnDemandThroughput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pointInTimeRecovery = registerOutput<TablePointInTimeRecovery>('pointInTimeRecovery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TablePointInTimeRecovery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rangeKey = registerOutput<String?>('rangeKey');
    readCapacity = registerOutput<int>('readCapacity');
    region = registerOutput<String>('region');
    replicas = registerOutput<List<Map<String, dynamic>>?>('replicas');
    restoreDateTime = registerOutput<String?>('restoreDateTime');
    restoreSourceName = registerOutput<String?>('restoreSourceName');
    restoreSourceTableArn = registerOutput<String?>('restoreSourceTableArn');
    restoreToLatestTime = registerOutput<bool?>('restoreToLatestTime');
    serverSideEncryption = registerOutput<TableServerSideEncryption>('serverSideEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    streamArn = registerOutput<String>('streamArn');
    streamEnabled = registerOutput<bool?>('streamEnabled');
    streamLabel = registerOutput<String>('streamLabel');
    streamViewType = registerOutput<String>('streamViewType');
    tableClass = registerOutput<String?>('tableClass');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    ttl = registerOutput<TableTtl>('ttl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableTtl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    warmThroughput = registerOutput<TableWarmThroughput>('warmThroughput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableWarmThroughput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    writeCapacity = registerOutput<int>('writeCapacity');
  }

  /// Gets an existing [Table] resource's state with the given [name] and [id].
  static Table get(
    String name,
    pulumi.Input<String> id, {
    TableState? state,
  }) {
    return Table._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Table._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/table:Table',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    attributes = registerOutput<List<Map<String, dynamic>>>('attributes');
    billingMode = registerOutput<String?>('billingMode');
    deletionProtectionEnabled = registerOutput<bool?>('deletionProtectionEnabled');
    globalSecondaryIndexes = registerOutput<List<Map<String, dynamic>>>('globalSecondaryIndexes');
    globalTableWitness = registerOutput<TableGlobalTableWitness>('globalTableWitness', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableGlobalTableWitness.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hashKey = registerOutput<String>('hashKey');
    importTable = registerOutput<TableImportTable?>('importTable', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableImportTable.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localSecondaryIndexes = registerOutput<List<Map<String, dynamic>>?>('localSecondaryIndexes');
    this.name = registerOutput<String>('name');
    onDemandThroughput = registerOutput<TableOnDemandThroughput?>('onDemandThroughput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableOnDemandThroughput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pointInTimeRecovery = registerOutput<TablePointInTimeRecovery>('pointInTimeRecovery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TablePointInTimeRecovery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rangeKey = registerOutput<String?>('rangeKey');
    readCapacity = registerOutput<int>('readCapacity');
    region = registerOutput<String>('region');
    replicas = registerOutput<List<Map<String, dynamic>>?>('replicas');
    restoreDateTime = registerOutput<String?>('restoreDateTime');
    restoreSourceName = registerOutput<String?>('restoreSourceName');
    restoreSourceTableArn = registerOutput<String?>('restoreSourceTableArn');
    restoreToLatestTime = registerOutput<bool?>('restoreToLatestTime');
    serverSideEncryption = registerOutput<TableServerSideEncryption>('serverSideEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    streamArn = registerOutput<String>('streamArn');
    streamEnabled = registerOutput<bool?>('streamEnabled');
    streamLabel = registerOutput<String>('streamLabel');
    streamViewType = registerOutput<String>('streamViewType');
    tableClass = registerOutput<String?>('tableClass');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    ttl = registerOutput<TableTtl>('ttl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableTtl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    warmThroughput = registerOutput<TableWarmThroughput>('warmThroughput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableWarmThroughput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    writeCapacity = registerOutput<int>('writeCapacity');
  }
}
