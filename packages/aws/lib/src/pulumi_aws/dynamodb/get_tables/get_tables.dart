import 'package:pulumi/pulumi.dart';
import 'get_tables_args.dart';
import 'get_tables_result.dart';

/// Returns a list of all AWS DynamoDB table names in a region.
///
/// ## Example Usage
///
/// The following example retrieves a list of all DynamoDB table names in a region.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const all = aws.dynamodb.getTables({});
/// export const tableNames = all.then(all => all.names);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// all = aws.dynamodb.get_tables()
/// pulumi.export("tableNames", all.names)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var all = Aws.DynamoDB.GetTables.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["tableNames"] = all.Apply(getTablesResult => getTablesResult.Names),
/// };
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
/// all, err := dynamodb.GetTables(ctx, &dynamodb.GetTablesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("tableNames", all.Names)
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
/// import com.pulumi.aws.dynamodb.inputs.GetTablesArgs;
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
/// final var all = DynamodbFunctions.getTables(GetTablesArgs.builder()
/// .build());
///
/// ctx.export("tableNames", all.names());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// all:
/// fn::invoke:
/// function: aws:dynamodb:getTables
/// arguments: {}
/// outputs:
/// tableNames: ${all.names}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTablesResult> getTables(
  GetTablesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dynamodb/getTables:getTables',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTablesResult.fromMap(result);
}
