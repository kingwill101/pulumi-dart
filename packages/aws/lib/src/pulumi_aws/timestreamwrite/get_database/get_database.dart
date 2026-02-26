import 'package:pulumi/pulumi.dart';
import 'get_database_args.dart';
import 'get_database_result.dart';

/// Data source for managing an AWS Timestream Write Database.
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
/// const test = aws.timestreamwrite.getDatabase({
/// name: "database-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.timestreamwrite.get_database(name="database-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.TimestreamWrite.GetDatabase.Invoke(new()
/// {
/// Name = "database-example",
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
/// _, err := timestreamwrite.LookupDatabase(ctx, &timestreamwrite.LookupDatabaseArgs{
/// Name: "database-example",
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
/// import com.pulumi.aws.timestreamwrite.inputs.GetDatabaseArgs;
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
/// final var test = TimestreamwriteFunctions.getDatabase(GetDatabaseArgs.builder()
/// .name("database-example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:timestreamwrite:getDatabase
/// arguments:
/// name: database-example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:timestreamwrite/getDatabase:getDatabase',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}
