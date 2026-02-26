import 'package:pulumi/pulumi.dart';
import 'get_table_args2.dart';
import 'get_table_result2.dart';

/// Data source for managing an AWS Timestream Write Table.
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
/// const test = aws.timestreamwrite.getTable({
/// databaseName: testAwsTimestreamwriteDatabase.databaseName,
/// name: testAwsTimestreamwriteTable.tableName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.timestreamwrite.get_table(database_name=test_aws_timestreamwrite_database["databaseName"],
/// name=test_aws_timestreamwrite_table["tableName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.TimestreamWrite.GetTable.Invoke(new()
/// {
/// DatabaseName = testAwsTimestreamwriteDatabase.DatabaseName,
/// Name = testAwsTimestreamwriteTable.TableName,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreamwrite"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := timestreamwrite.LookupTable(ctx, &timestreamwrite.LookupTableArgs{
/// DatabaseName: testAwsTimestreamwriteDatabase.DatabaseName,
/// Name:         testAwsTimestreamwriteTable.TableName,
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
/// import com.pulumi.aws.timestreamwrite.TimestreamwriteFunctions;
/// import com.pulumi.aws.timestreamwrite.inputs.GetTableArgs;
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
/// final var test = TimestreamwriteFunctions.getTable(GetTableArgs.builder()
/// .databaseName(testAwsTimestreamwriteDatabase.databaseName())
/// .name(testAwsTimestreamwriteTable.tableName())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:timestreamwrite:getTable
/// arguments:
/// databaseName: ${testAwsTimestreamwriteDatabase.databaseName}
/// name: ${testAwsTimestreamwriteTable.tableName}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTableResult2> getTable2(
  GetTableArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:timestreamwrite/getTable:getTable',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTableResult2.fromMap(result);
}
