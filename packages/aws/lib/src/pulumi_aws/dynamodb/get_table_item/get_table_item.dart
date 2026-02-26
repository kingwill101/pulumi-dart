import 'package:pulumi/pulumi.dart';
import 'get_table_item_args.dart';
import 'get_table_item_result.dart';

/// Data source for retrieving a value from an AWS DynamoDB table.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.dynamodb.getTableItem({
/// tableName: example.name,
/// expressionAttributeNames: {
/// "#P": "Percentile",
/// },
/// projectionExpression: "#P",
/// key: `{
/// \\t\\"hashKey\\": {\\"S\\": \\"example\\"}
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.dynamodb.get_table_item(table_name=example["name"],
/// expression_attribute_names={
/// "#P": "Percentile",
/// },
/// projection_expression="#P",
/// key="""{
/// \t\"hashKey\": {\"S\": \"example\"}
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
/// var test = Aws.DynamoDB.GetTableItem.Invoke(new()
/// {
/// TableName = example.Name,
/// ExpressionAttributeNames =
/// {
/// { "#P", "Percentile" },
/// },
/// ProjectionExpression = "#P",
/// Key = @"{
/// \t\""hashKey\"": {\""S\"": \""example\""}
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
/// _, err := dynamodb.LookupTableItem(ctx, &dynamodb.LookupTableItemArgs{
/// TableName: example.Name,
/// ExpressionAttributeNames: map[string]interface{}{
/// "#P": "Percentile",
/// },
/// ProjectionExpression: pulumi.StringRef("#P"),
/// Key:                  "{\n\\t\\\"hashKey\\\": {\\\"S\\\": \\\"example\\\"}\n}\n",
/// }, nil)
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
/// import com.pulumi.aws.dynamodb.DynamodbFunctions;
/// import com.pulumi.aws.dynamodb.inputs.GetTableItemArgs;
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
/// final var test = DynamodbFunctions.getTableItem(GetTableItemArgs.builder()
/// .tableName(example.name())
/// .expressionAttributeNames(Map.of("#P", "Percentile"))
/// .projectionExpression("#P")
/// .key("""
/// {
/// \t\"hashKey\": {\"S\": \"example\"}
/// }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:dynamodb:getTableItem
/// arguments:
/// tableName: ${example.name}
/// expressionAttributeNames:
/// '#P': Percentile
/// projectionExpression: '#P'
/// key: |
/// {
/// \t\"hashKey\": {\"S\": \"example\"}
/// }
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTableItemResult> getTableItem(
  GetTableItemArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dynamodb/getTableItem:getTableItem',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTableItemResult.fromMap(result);
}
