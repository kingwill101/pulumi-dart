import 'package:pulumi/pulumi.dart';
import 'table_item_args.dart';

/// Provides a DynamoDB table item resource
///
/// > **Note:** This resource is not meant to be used for managing large amounts of data in your table, it is not designed to scale.
/// You should perform **regular backups** of all data in the table, see [AWS docs for more](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/BackupRestore.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleTable = new aws.dynamodb.Table("example", {
/// name: "example-name",
/// readCapacity: 10,
/// writeCapacity: 10,
/// hashKey: "exampleHashKey",
/// attributes: [{
/// name: "exampleHashKey",
/// type: "S",
/// }],
/// });
/// const example = new aws.dynamodb.TableItem("example", {
/// tableName: exampleTable.name,
/// hashKey: exampleTable.hashKey,
/// item: `{
/// \\"exampleHashKey\\": {\\"S\\": \\"something\\"},
/// \\"one\\": {\\"N\\": \\"11111\\"},
/// \\"two\\": {\\"N\\": \\"22222\\"},
/// \\"three\\": {\\"N\\": \\"33333\\"},
/// \\"four\\": {\\"N\\": \\"44444\\"}
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_table = aws.dynamodb.Table("example",
/// name="example-name",
/// read_capacity=10,
/// write_capacity=10,
/// hash_key="exampleHashKey",
/// attributes=[{
/// "name": "exampleHashKey",
/// "type": "S",
/// }])
/// example = aws.dynamodb.TableItem("example",
/// table_name=example_table.name,
/// hash_key=example_table.hash_key,
/// item="""{
/// \"exampleHashKey\": {\"S\": \"something\"},
/// \"one\": {\"N\": \"11111\"},
/// \"two\": {\"N\": \"22222\"},
/// \"three\": {\"N\": \"33333\"},
/// \"four\": {\"N\": \"44444\"}
/// }
/// """)
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
/// Name = "example-name",
/// ReadCapacity = 10,
/// WriteCapacity = 10,
/// HashKey = "exampleHashKey",
/// Attributes = new[]
/// {
/// new Aws.DynamoDB.Inputs.TableAttributeArgs
/// {
/// Name = "exampleHashKey",
/// Type = "S",
/// },
/// },
/// });
///
/// var example = new Aws.DynamoDB.TableItem("example", new()
/// {
/// TableName = exampleTable.Name,
/// HashKey = exampleTable.HashKey,
/// Item = @"{
/// \""exampleHashKey\"": {\""S\"": \""something\""},
/// \""one\"": {\""N\"": \""11111\""},
/// \""two\"": {\""N\"": \""22222\""},
/// \""three\"": {\""N\"": \""33333\""},
/// \""four\"": {\""N\"": \""44444\""}
/// }
/// ",
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
/// Name:          pulumi.String("example-name"),
/// ReadCapacity:  pulumi.Int(10),
/// WriteCapacity: pulumi.Int(10),
/// HashKey:       pulumi.String("exampleHashKey"),
/// Attributes: dynamodb.TableAttributeArray{
/// &dynamodb.TableAttributeArgs{
/// Name: pulumi.String("exampleHashKey"),
/// Type: pulumi.String("S"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dynamodb.NewTableItem(ctx, "example", &dynamodb.TableItemArgs{
/// TableName: exampleTable.Name,
/// HashKey:   exampleTable.HashKey,
/// Item: pulumi.String(`{
/// \"exampleHashKey\": {\"S\": \"something\"},
/// \"one\": {\"N\": \"11111\"},
/// \"two\": {\"N\": \"22222\"},
/// \"three\": {\"N\": \"33333\"},
/// \"four\": {\"N\": \"44444\"}
/// }
/// `),
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
/// import com.pulumi.aws.dynamodb.TableItem;
/// import com.pulumi.aws.dynamodb.TableItemArgs;
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
/// .name("example-name")
/// .readCapacity(10)
/// .writeCapacity(10)
/// .hashKey("exampleHashKey")
/// .attributes(TableAttributeArgs.builder()
/// .name("exampleHashKey")
/// .type("S")
/// .build())
/// .build());
///
/// var example = new TableItem("example", TableItemArgs.builder()
/// .tableName(exampleTable.name())
/// .hashKey(exampleTable.hashKey())
/// .item("""
/// {
/// \"exampleHashKey\": {\"S\": \"something\"},
/// \"one\": {\"N\": \"11111\"},
/// \"two\": {\"N\": \"22222\"},
/// \"three\": {\"N\": \"33333\"},
/// \"four\": {\"N\": \"44444\"}
/// }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:dynamodb:TableItem
/// properties:
/// tableName: ${exampleTable.name}
/// hashKey: ${exampleTable.hashKey}
/// item: |
/// {
/// \"exampleHashKey\": {\"S\": \"something\"},
/// \"one\": {\"N\": \"11111\"},
/// \"two\": {\"N\": \"22222\"},
/// \"three\": {\"N\": \"33333\"},
/// \"four\": {\"N\": \"44444\"}
/// }
/// exampleTable:
/// type: aws:dynamodb:Table
/// name: example
/// properties:
/// name: example-name
/// readCapacity: 10
/// writeCapacity: 10
/// hashKey: exampleHashKey
/// attributes:
/// - name: exampleHashKey
/// type: S
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// You cannot import DynamoDB table items.
class TableItem extends CustomResource {
  /// Hash key to use for lookups and identification of the item
  late final Output<String> hashKey;

  /// JSON representation of a map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can optionally provide other attribute name-value pairs for the item.
  late final Output<String> item;

  /// Range key to use for lookups and identification of the item. Required if there is range key defined in the table.
  late final Output<String?> rangeKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name or ARN of the table to contain the item.
  ///
  /// > **Note:** Names included in <span pulumi-lang-nodejs="`item`" pulumi-lang-dotnet="`Item`" pulumi-lang-go="`item`" pulumi-lang-python="`item`" pulumi-lang-yaml="`item`" pulumi-lang-java="`item`">`item`</span> are represented internally with everything but letters removed. There is the possibility of collisions if two names, once filtered, are the same. For example, the names `your-name-here` and <span pulumi-lang-nodejs="`yournamehere`" pulumi-lang-dotnet="`Yournamehere`" pulumi-lang-go="`yournamehere`" pulumi-lang-python="`yournamehere`" pulumi-lang-yaml="`yournamehere`" pulumi-lang-java="`yournamehere`">`yournamehere`</span> will overlap and cause an error.
  late final Output<String> tableName;

  TableItem(
    String name, {
    TableItemArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/tableItem:TableItem',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.hashKey = Output.createUnknown<String>();
    this.item = Output.createUnknown<String>();
    this.rangeKey = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.tableName = Output.createUnknown<String>();
  }
}
