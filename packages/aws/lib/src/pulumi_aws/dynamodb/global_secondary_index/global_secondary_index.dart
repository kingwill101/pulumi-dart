import 'package:pulumi/pulumi.dart';
import '../global_secondary_index_key_schema/global_secondary_index_key_schema.dart';
import '../global_secondary_index_on_demand_throughput/global_secondary_index_on_demand_throughput.dart';
import '../global_secondary_index_projection/global_secondary_index_projection.dart';
import '../global_secondary_index_provisioned_throughput/global_secondary_index_provisioned_throughput.dart';
import '../global_secondary_index_timeouts/global_secondary_index_timeouts.dart';
import '../global_secondary_index_warm_throughput/global_secondary_index_warm_throughput.dart';
import 'global_secondary_index_args.dart';

/// !> The resource type <span pulumi-lang-nodejs="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-dotnet="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-go="`dynamodb.GlobalSecondaryIndex`" pulumi-lang-python="`dynamodb.GlobalSecondaryIndex`" pulumi-lang-yaml="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-java="`aws.dynamodb.GlobalSecondaryIndex`">`aws.dynamodb.GlobalSecondaryIndex`</span> is an experimental feature. The schema or behavior may change without notice, and it is not subject to the backwards compatibility guarantee of the provider.
///
/// > The resource type <span pulumi-lang-nodejs="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-dotnet="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-go="`dynamodb.GlobalSecondaryIndex`" pulumi-lang-python="`dynamodb.GlobalSecondaryIndex`" pulumi-lang-yaml="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-java="`aws.dynamodb.GlobalSecondaryIndex`">`aws.dynamodb.GlobalSecondaryIndex`</span> can be enabled by setting the environment variable `TF_AWS_EXPERIMENT_dynamodb_global_secondary_index` to any value. If not enabled, use of <span pulumi-lang-nodejs="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-dotnet="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-go="`dynamodb.GlobalSecondaryIndex`" pulumi-lang-python="`dynamodb.GlobalSecondaryIndex`" pulumi-lang-yaml="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-java="`aws.dynamodb.GlobalSecondaryIndex`">`aws.dynamodb.GlobalSecondaryIndex`</span> will result in an error when running Terraform.
///
/// > Please provide feedback, positive or negative, at https://github.com/hashicorp/terraform-provider-aws/issues/45640. User feedback will determine if this experiment is a success.
///
/// !> **WARNING:** Do not combine <span pulumi-lang-nodejs="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-dotnet="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-go="`dynamodb.GlobalSecondaryIndex`" pulumi-lang-python="`dynamodb.GlobalSecondaryIndex`" pulumi-lang-yaml="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-java="`aws.dynamodb.GlobalSecondaryIndex`">`aws.dynamodb.GlobalSecondaryIndex`</span> resources in conjunction with <span pulumi-lang-nodejs="`globalSecondaryIndex`" pulumi-lang-dotnet="`GlobalSecondaryIndex`" pulumi-lang-go="`globalSecondaryIndex`" pulumi-lang-python="`global_secondary_index`" pulumi-lang-yaml="`globalSecondaryIndex`" pulumi-lang-java="`globalSecondaryIndex`">`global_secondary_index`</span> on <span pulumi-lang-nodejs="`aws.dynamodb.Table`" pulumi-lang-dotnet="`aws.dynamodb.Table`" pulumi-lang-go="`dynamodb.Table`" pulumi-lang-python="`dynamodb.Table`" pulumi-lang-yaml="`aws.dynamodb.Table`" pulumi-lang-java="`aws.dynamodb.Table`">`aws.dynamodb.Table`</span>. Doing so may cause conflicts, perpertual differences, and Global Secondary Indexes being overwritten.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleTable = new aws.dynamodb.Table("example", {
/// name: "example",
/// billingMode: "PROVISIONED",
/// readCapacity: 20,
/// writeCapacity: 20,
/// hashKey: "UserId",
/// rangeKey: "GameTitle",
/// attributes: [
/// {
/// name: "UserId",
/// type: "S",
/// },
/// {
/// name: "GameTitle",
/// type: "S",
/// },
/// ],
/// });
/// const example = new aws.dynamodb.GlobalSecondaryIndex("example", {
/// tableName: exampleTable.name,
/// indexName: "GameTitleIndex",
/// projection: {
/// projectionType: "INCLUDE",
/// nonKeyAttributes: ["UserId"],
/// },
/// provisionedThroughput: {
/// writeCapacityUnits: 10,
/// readCapacityUnits: 10,
/// },
/// keySchemas: [{
/// attributeName: "GameTitle",
/// attributeType: "S",
/// keyType: "HASH",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_table = aws.dynamodb.Table("example",
/// name="example",
/// billing_mode="PROVISIONED",
/// read_capacity=20,
/// write_capacity=20,
/// hash_key="UserId",
/// range_key="GameTitle",
/// attributes=[
/// {
/// "name": "UserId",
/// "type": "S",
/// },
/// {
/// "name": "GameTitle",
/// "type": "S",
/// },
/// ])
/// example = aws.dynamodb.GlobalSecondaryIndex("example",
/// table_name=example_table.name,
/// index_name="GameTitleIndex",
/// projection={
/// "projection_type": "INCLUDE",
/// "non_key_attributes": ["UserId"],
/// },
/// provisioned_throughput={
/// "write_capacity_units": 10,
/// "read_capacity_units": 10,
/// },
/// key_schemas=[{
/// "attribute_name": "GameTitle",
/// "attribute_type": "S",
/// "key_type": "HASH",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleTable = new Aws.DynamoDB.Table("example", new()
/// {
/// Name = "example",
/// BillingMode = "PROVISIONED",
/// ReadCapacity = 20,
/// WriteCapacity = 20,
/// HashKey = "UserId",
/// RangeKey = "GameTitle",
/// Attributes = new[]
/// {
/// new Aws.DynamoDB.Inputs.TableAttributeArgs
/// {
/// Name = "UserId",
/// Type = "S",
/// },
/// new Aws.DynamoDB.Inputs.TableAttributeArgs
/// {
/// Name = "GameTitle",
/// Type = "S",
/// },
/// },
/// });
///
/// var example = new Aws.DynamoDB.GlobalSecondaryIndex("example", new()
/// {
/// TableName = exampleTable.Name,
/// IndexName = "GameTitleIndex",
/// Projection = new Aws.DynamoDB.Inputs.GlobalSecondaryIndexProjectionArgs
/// {
/// ProjectionType = "INCLUDE",
/// NonKeyAttributes = new[]
/// {
/// "UserId",
/// },
/// },
/// ProvisionedThroughput = new Aws.DynamoDB.Inputs.GlobalSecondaryIndexProvisionedThroughputArgs
/// {
/// WriteCapacityUnits = 10,
/// ReadCapacityUnits = 10,
/// },
/// KeySchemas = new[]
/// {
/// new Aws.DynamoDB.Inputs.GlobalSecondaryIndexKeySchemaArgs
/// {
/// AttributeName = "GameTitle",
/// AttributeType = "S",
/// KeyType = "HASH",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleTable, err := dynamodb.NewTable(ctx, "example", &dynamodb.TableArgs{
/// Name:          pulumi.String("example"),
/// BillingMode:   pulumi.String("PROVISIONED"),
/// ReadCapacity:  pulumi.Int(20),
/// WriteCapacity: pulumi.Int(20),
/// HashKey:       pulumi.String("UserId"),
/// RangeKey:      pulumi.String("GameTitle"),
/// Attributes: dynamodb.TableAttributeArray{
/// &dynamodb.TableAttributeArgs{
/// Name: pulumi.String("UserId"),
/// Type: pulumi.String("S"),
/// },
/// &dynamodb.TableAttributeArgs{
/// Name: pulumi.String("GameTitle"),
/// Type: pulumi.String("S"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dynamodb.NewGlobalSecondaryIndex(ctx, "example", &dynamodb.GlobalSecondaryIndexArgs{
/// TableName: exampleTable.Name,
/// IndexName: pulumi.String("GameTitleIndex"),
/// Projection: &dynamodb.GlobalSecondaryIndexProjectionArgs{
/// ProjectionType: pulumi.String("INCLUDE"),
/// NonKeyAttributes: pulumi.StringArray{
/// pulumi.String("UserId"),
/// },
/// },
/// ProvisionedThroughput: &dynamodb.GlobalSecondaryIndexProvisionedThroughputArgs{
/// WriteCapacityUnits: pulumi.Int(10),
/// ReadCapacityUnits:  pulumi.Int(10),
/// },
/// KeySchemas: dynamodb.GlobalSecondaryIndexKeySchemaArray{
/// &dynamodb.GlobalSecondaryIndexKeySchemaArgs{
/// AttributeName: pulumi.String("GameTitle"),
/// AttributeType: pulumi.String("S"),
/// KeyType:       pulumi.String("HASH"),
/// },
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var exampleTable = new Table("exampleTable", TableArgs.builder()
/// .name("example")
/// .billingMode("PROVISIONED")
/// .readCapacity(20)
/// .writeCapacity(20)
/// .hashKey("UserId")
/// .rangeKey("GameTitle")
/// .attributes(
/// TableAttributeArgs.builder()
/// .name("UserId")
/// .type("S")
/// .build(),
/// TableAttributeArgs.builder()
/// .name("GameTitle")
/// .type("S")
/// .build())
/// .build());
///
/// var example = new GlobalSecondaryIndex("example", GlobalSecondaryIndexArgs.builder()
/// .tableName(exampleTable.name())
/// .indexName("GameTitleIndex")
/// .projection(GlobalSecondaryIndexProjectionArgs.builder()
/// .projectionType("INCLUDE")
/// .nonKeyAttributes("UserId")
/// .build())
/// .provisionedThroughput(GlobalSecondaryIndexProvisionedThroughputArgs.builder()
/// .writeCapacityUnits(10)
/// .readCapacityUnits(10)
/// .build())
/// .keySchemas(GlobalSecondaryIndexKeySchemaArgs.builder()
/// .attributeName("GameTitle")
/// .attributeType("S")
/// .keyType("HASH")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:dynamodb:GlobalSecondaryIndex
/// properties:
/// tableName: ${exampleTable.name}
/// indexName: GameTitleIndex
/// projection:
/// projectionType: INCLUDE
/// nonKeyAttributes:
/// - UserId
/// provisionedThroughput:
/// writeCapacityUnits: 10
/// readCapacityUnits: 10
/// keySchemas:
/// - attributeName: GameTitle
/// attributeType: S
/// keyType: HASH
/// exampleTable:
/// type: aws:dynamodb:Table
/// name: example
/// properties:
/// name: example
/// billingMode: PROVISIONED
/// readCapacity: 20
/// writeCapacity: 20
/// hashKey: UserId
/// rangeKey: GameTitle
/// attributes:
/// - name: UserId
/// type: S
/// - name: GameTitle
/// type: S
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Migrating
///
/// Use the following steps to migrate existing Global Secondary Indexes defined inline in <span pulumi-lang-nodejs="`globalSecondaryIndex`" pulumi-lang-dotnet="`GlobalSecondaryIndex`" pulumi-lang-go="`globalSecondaryIndex`" pulumi-lang-python="`global_secondary_index`" pulumi-lang-yaml="`globalSecondaryIndex`" pulumi-lang-java="`globalSecondaryIndex`">`global_secondary_index`</span> on an <span pulumi-lang-nodejs="`aws.dynamodb.Table`" pulumi-lang-dotnet="`aws.dynamodb.Table`" pulumi-lang-go="`dynamodb.Table`" pulumi-lang-python="`dynamodb.Table`" pulumi-lang-yaml="`aws.dynamodb.Table`" pulumi-lang-java="`aws.dynamodb.Table`">`aws.dynamodb.Table`</span>.
///
/// For each block <span pulumi-lang-nodejs="`globalSecondaryIndex`" pulumi-lang-dotnet="`GlobalSecondaryIndex`" pulumi-lang-go="`globalSecondaryIndex`" pulumi-lang-python="`global_secondary_index`" pulumi-lang-yaml="`globalSecondaryIndex`" pulumi-lang-java="`globalSecondaryIndex`">`global_secondary_index`</span> create a new <span pulumi-lang-nodejs="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-dotnet="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-go="`dynamodb.GlobalSecondaryIndex`" pulumi-lang-python="`dynamodb.GlobalSecondaryIndex`" pulumi-lang-yaml="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-java="`aws.dynamodb.GlobalSecondaryIndex`">`aws.dynamodb.GlobalSecondaryIndex`</span> resource with configuration corresponding to the existing block.
///
/// For example, starting with the following configuration:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dynamodb.Table("example", {
/// name: "example-table",
/// hashKey: "example-key",
/// readCapacity: 1,
/// writeCapacity: 1,
/// globalSecondaryIndexes: [
/// {
/// name: "example-index-1",
/// projectionType: "ALL",
/// hashKey: "example-gsi-key-1",
/// readCapacity: 1,
/// writeCapacity: 1,
/// },
/// {
/// name: "example-index-2",
/// projectionType: "ALL",
/// hashKey: "example-gsi-key-2",
/// readCapacity: 1,
/// writeCapacity: 1,
/// },
/// ],
/// attributes: [
/// {
/// name: "example-key",
/// type: "S",
/// },
/// {
/// name: "example-gsi-key-1",
/// type: "S",
/// },
/// {
/// name: "example-gsi-key-2",
/// type: "S",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dynamodb.Table("example",
/// name="example-table",
/// hash_key="example-key",
/// read_capacity=1,
/// write_capacity=1,
/// global_secondary_indexes=[
/// {
/// "name": "example-index-1",
/// "projection_type": "ALL",
/// "hash_key": "example-gsi-key-1",
/// "read_capacity": 1,
/// "write_capacity": 1,
/// },
/// {
/// "name": "example-index-2",
/// "projection_type": "ALL",
/// "hash_key": "example-gsi-key-2",
/// "read_capacity": 1,
/// "write_capacity": 1,
/// },
/// ],
/// attributes=[
/// {
/// "name": "example-key",
/// "type": "S",
/// },
/// {
/// "name": "example-gsi-key-1",
/// "type": "S",
/// },
/// {
/// "name": "example-gsi-key-2",
/// "type": "S",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DynamoDB.Table("example", new()
/// {
/// Name = "example-table",
/// HashKey = "example-key",
/// ReadCapacity = 1,
/// WriteCapacity = 1,
/// GlobalSecondaryIndexes = new[]
/// {
/// new Aws.DynamoDB.Inputs.TableGlobalSecondaryIndexArgs
/// {
/// Name = "example-index-1",
/// ProjectionType = "ALL",
/// HashKey = "example-gsi-key-1",
/// ReadCapacity = 1,
/// WriteCapacity = 1,
/// },
/// new Aws.DynamoDB.Inputs.TableGlobalSecondaryIndexArgs
/// {
/// Name = "example-index-2",
/// ProjectionType = "ALL",
/// HashKey = "example-gsi-key-2",
/// ReadCapacity = 1,
/// WriteCapacity = 1,
/// },
/// },
/// Attributes = new[]
/// {
/// new Aws.DynamoDB.Inputs.TableAttributeArgs
/// {
/// Name = "example-key",
/// Type = "S",
/// },
/// new Aws.DynamoDB.Inputs.TableAttributeArgs
/// {
/// Name = "example-gsi-key-1",
/// Type = "S",
/// },
/// new Aws.DynamoDB.Inputs.TableAttributeArgs
/// {
/// Name = "example-gsi-key-2",
/// Type = "S",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dynamodb.NewTable(ctx, "example", &dynamodb.TableArgs{
/// Name:          pulumi.String("example-table"),
/// HashKey:       pulumi.String("example-key"),
/// ReadCapacity:  pulumi.Int(1),
/// WriteCapacity: pulumi.Int(1),
/// GlobalSecondaryIndexes: dynamodb.TableGlobalSecondaryIndexArray{
/// &dynamodb.TableGlobalSecondaryIndexArgs{
/// Name:           pulumi.String("example-index-1"),
/// ProjectionType: pulumi.String("ALL"),
/// HashKey:        pulumi.String("example-gsi-key-1"),
/// ReadCapacity:   pulumi.Int(1),
/// WriteCapacity:  pulumi.Int(1),
/// },
/// &dynamodb.TableGlobalSecondaryIndexArgs{
/// Name:           pulumi.String("example-index-2"),
/// ProjectionType: pulumi.String("ALL"),
/// HashKey:        pulumi.String("example-gsi-key-2"),
/// ReadCapacity:   pulumi.Int(1),
/// WriteCapacity:  pulumi.Int(1),
/// },
/// },
/// Attributes: dynamodb.TableAttributeArray{
/// &dynamodb.TableAttributeArgs{
/// Name: pulumi.String("example-key"),
/// Type: pulumi.String("S"),
/// },
/// &dynamodb.TableAttributeArgs{
/// Name: pulumi.String("example-gsi-key-1"),
/// Type: pulumi.String("S"),
/// },
/// &dynamodb.TableAttributeArgs{
/// Name: pulumi.String("example-gsi-key-2"),
/// Type: pulumi.String("S"),
/// },
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Table("example", TableArgs.builder()
/// .name("example-table")
/// .hashKey("example-key")
/// .readCapacity(1)
/// .writeCapacity(1)
/// .globalSecondaryIndexes(
/// TableGlobalSecondaryIndexArgs.builder()
/// .name("example-index-1")
/// .projectionType("ALL")
/// .hashKey("example-gsi-key-1")
/// .readCapacity(1)
/// .writeCapacity(1)
/// .build(),
/// TableGlobalSecondaryIndexArgs.builder()
/// .name("example-index-2")
/// .projectionType("ALL")
/// .hashKey("example-gsi-key-2")
/// .readCapacity(1)
/// .writeCapacity(1)
/// .build())
/// .attributes(
/// TableAttributeArgs.builder()
/// .name("example-key")
/// .type("S")
/// .build(),
/// TableAttributeArgs.builder()
/// .name("example-gsi-key-1")
/// .type("S")
/// .build(),
/// TableAttributeArgs.builder()
/// .name("example-gsi-key-2")
/// .type("S")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:dynamodb:Table
/// properties:
/// name: example-table
/// hashKey: example-key
/// readCapacity: 1
/// writeCapacity: 1
/// globalSecondaryIndexes:
/// - name: example-index-1
/// projectionType: ALL
/// hashKey: example-gsi-key-1
/// readCapacity: 1
/// writeCapacity: 1
/// - name: example-index-2
/// projectionType: ALL
/// hashKey: example-gsi-key-2
/// readCapacity: 1
/// writeCapacity: 1
/// attributes:
/// - name: example-key
/// type: S
/// - name: example-gsi-key-1
/// type: S
/// - name: example-gsi-key-2
/// type: S
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Update the configuration to the following. Note that the schema of <span pulumi-lang-nodejs="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-dotnet="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-go="`dynamodb.GlobalSecondaryIndex`" pulumi-lang-python="`dynamodb.GlobalSecondaryIndex`" pulumi-lang-yaml="`aws.dynamodb.GlobalSecondaryIndex`" pulumi-lang-java="`aws.dynamodb.GlobalSecondaryIndex`">`aws.dynamodb.GlobalSecondaryIndex`</span> has some differences with <span pulumi-lang-nodejs="`globalSecondaryIndex`" pulumi-lang-dotnet="`GlobalSecondaryIndex`" pulumi-lang-go="`globalSecondaryIndex`" pulumi-lang-python="`global_secondary_index`" pulumi-lang-yaml="`globalSecondaryIndex`" pulumi-lang-java="`globalSecondaryIndex`">`global_secondary_index`</span> on <span pulumi-lang-nodejs="`aws.dynamodb.Table`" pulumi-lang-dotnet="`aws.dynamodb.Table`" pulumi-lang-go="`dynamodb.Table`" pulumi-lang-python="`dynamodb.Table`" pulumi-lang-yaml="`aws.dynamodb.Table`" pulumi-lang-java="`aws.dynamodb.Table`">`aws.dynamodb.Table`</span>.
///
/// If using Terraform versions prior to v1.5.0, remove the <span pulumi-lang-nodejs="`import`" pulumi-lang-dotnet="`Import`" pulumi-lang-go="`import`" pulumi-lang-python="`import`" pulumi-lang-yaml="`import`" pulumi-lang-java="`import`">`import`</span> blocks and use the `pulumi import` command.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import DynamoDB tables using the <span pulumi-lang-nodejs="`tableName`" pulumi-lang-dotnet="`TableName`" pulumi-lang-go="`tableName`" pulumi-lang-python="`table_name`" pulumi-lang-yaml="`tableName`" pulumi-lang-java="`tableName`">`table_name`</span> and <span pulumi-lang-nodejs="`indexName`" pulumi-lang-dotnet="`IndexName`" pulumi-lang-go="`indexName`" pulumi-lang-python="`index_name`" pulumi-lang-yaml="`indexName`" pulumi-lang-java="`indexName`">`index_name`</span>, separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/globalSecondaryIndex:GlobalSecondaryIndex example 'example-table,example-index'
/// ```
class GlobalSecondaryIndex extends CustomResource {
  /// ARN of the GSI.
  late final Output<String> arn;

  /// Name of the index.
  late final Output<String> indexName;

  /// Set of nested attribute definitions.
  /// At least 1 element defining a `HASH` is required.
  /// All elements with the <span pulumi-lang-nodejs="`keyType`" pulumi-lang-dotnet="`KeyType`" pulumi-lang-go="`keyType`" pulumi-lang-python="`key_type`" pulumi-lang-yaml="`keyType`" pulumi-lang-java="`keyType`">`key_type`</span> of `HASH` must precede elements with <span pulumi-lang-nodejs="`keyType`" pulumi-lang-dotnet="`KeyType`" pulumi-lang-go="`keyType`" pulumi-lang-python="`key_type`" pulumi-lang-yaml="`keyType`" pulumi-lang-java="`keyType`">`key_type`</span> of `RANGE`.
  /// Changing any values in <span pulumi-lang-nodejs="`keySchema`" pulumi-lang-dotnet="`KeySchema`" pulumi-lang-go="`keySchema`" pulumi-lang-python="`key_schema`" pulumi-lang-yaml="`keySchema`" pulumi-lang-java="`keySchema`">`key_schema`</span> will re-create the resource.
  /// See <span pulumi-lang-nodejs="`keySchema`" pulumi-lang-dotnet="`KeySchema`" pulumi-lang-go="`keySchema`" pulumi-lang-python="`key_schema`" pulumi-lang-yaml="`keySchema`" pulumi-lang-java="`keySchema`">`key_schema`</span> below.
  late final Output<List<GlobalSecondaryIndexKeySchema>?> keySchemas;

  /// Sets the maximum number of read and write units for the index.
  /// See <span pulumi-lang-nodejs="`onDemandThroughput`" pulumi-lang-dotnet="`OnDemandThroughput`" pulumi-lang-go="`onDemandThroughput`" pulumi-lang-python="`on_demand_throughput`" pulumi-lang-yaml="`onDemandThroughput`" pulumi-lang-java="`onDemandThroughput`">`on_demand_throughput`</span> below.
  /// Only valid if the table's <span pulumi-lang-nodejs="`billingMode`" pulumi-lang-dotnet="`BillingMode`" pulumi-lang-go="`billingMode`" pulumi-lang-python="`billing_mode`" pulumi-lang-yaml="`billingMode`" pulumi-lang-java="`billingMode`">`billing_mode`</span> is `PAY_PER_REQUEST`.
  late final Output<GlobalSecondaryIndexOnDemandThroughput?> onDemandThroughput;

  /// Describes which attributes from the table are represented in the index.
  /// See <span pulumi-lang-nodejs="`projection`" pulumi-lang-dotnet="`Projection`" pulumi-lang-go="`projection`" pulumi-lang-python="`projection`" pulumi-lang-yaml="`projection`" pulumi-lang-java="`projection`">`projection`</span> below.
  late final Output<GlobalSecondaryIndexProjection?> projection;

  /// Provisioned throughput for the index.
  /// See <span pulumi-lang-nodejs="`provisionedThroughput`" pulumi-lang-dotnet="`ProvisionedThroughput`" pulumi-lang-go="`provisionedThroughput`" pulumi-lang-python="`provisioned_throughput`" pulumi-lang-yaml="`provisionedThroughput`" pulumi-lang-java="`provisionedThroughput`">`provisioned_throughput`</span> below.
  /// Required if the table's <span pulumi-lang-nodejs="`billingMode`" pulumi-lang-dotnet="`BillingMode`" pulumi-lang-go="`billingMode`" pulumi-lang-python="`billing_mode`" pulumi-lang-yaml="`billingMode`" pulumi-lang-java="`billingMode`">`billing_mode`</span> is `PROVISIONED`.
  late final Output<GlobalSecondaryIndexProvisionedThroughput?>
      provisionedThroughput;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the table this index belongs to.
  ///
  /// The following arguments are optional:
  late final Output<String> tableName;
  late final Output<GlobalSecondaryIndexTimeouts?> timeouts;

  /// Sets the number of warm read and write units for this index.
  /// See <span pulumi-lang-nodejs="`warmThroughput`" pulumi-lang-dotnet="`WarmThroughput`" pulumi-lang-go="`warmThroughput`" pulumi-lang-python="`warm_throughput`" pulumi-lang-yaml="`warmThroughput`" pulumi-lang-java="`warmThroughput`">`warm_throughput`</span> below.
  late final Output<GlobalSecondaryIndexWarmThroughput> warmThroughput;

  GlobalSecondaryIndex(
    String name, {
    GlobalSecondaryIndexArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/globalSecondaryIndex:GlobalSecondaryIndex',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.indexName = Output.createUnknown<String>();
    this.keySchemas =
        Output.createUnknown<List<GlobalSecondaryIndexKeySchema>?>();
    this.onDemandThroughput =
        Output.createUnknown<GlobalSecondaryIndexOnDemandThroughput?>();
    this.projection = Output.createUnknown<GlobalSecondaryIndexProjection?>();
    this.provisionedThroughput =
        Output.createUnknown<GlobalSecondaryIndexProvisionedThroughput?>();
    this.region = Output.createUnknown<String>();
    this.tableName = Output.createUnknown<String>();
    this.timeouts = Output.createUnknown<GlobalSecondaryIndexTimeouts?>();
    this.warmThroughput =
        Output.createUnknown<GlobalSecondaryIndexWarmThroughput>();
  }
}
