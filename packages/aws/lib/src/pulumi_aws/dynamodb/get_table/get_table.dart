import 'package:pulumi/pulumi.dart';
import 'get_table_args.dart';
import 'get_table_result.dart';

/// Provides information about a DynamoDB table.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const tableName = aws.dynamodb.getTable({
/// name: "tableName",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// table_name = aws.dynamodb.get_table(name="tableName")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var tableName = Aws.DynamoDB.GetTable.Invoke(new()
/// {
/// Name = "tableName",
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
/// _, err := dynamodb.LookupTable(ctx, &dynamodb.LookupTableArgs{
/// Name: "tableName",
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
/// import com.pulumi.aws.dynamodb.inputs.GetTableArgs;
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
/// final var tableName = DynamodbFunctions.getTable(GetTableArgs.builder()
/// .name("tableName")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// tableName:
/// fn::invoke:
/// function: aws:dynamodb:getTable
/// arguments:
/// name: tableName
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTableResult> getTable(
  GetTableArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dynamodb/getTable:getTable',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTableResult.fromMap(result);
}
