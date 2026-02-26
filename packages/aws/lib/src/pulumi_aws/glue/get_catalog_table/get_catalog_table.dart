import 'package:pulumi/pulumi.dart';
import 'get_catalog_table_args.dart';
import 'get_catalog_table_result.dart';

/// This data source can be used to fetch information about an AWS Glue Data Catalog Table.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.glue.getCatalogTable({
/// name: "MyCatalogTable",
/// databaseName: "MyCatalogDatabase",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.get_catalog_table(name="MyCatalogTable",
/// database_name="MyCatalogDatabase")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Glue.GetCatalogTable.Invoke(new()
/// {
/// Name = "MyCatalogTable",
/// DatabaseName = "MyCatalogDatabase",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := glue.LookupCatalogTable(ctx, &glue.LookupCatalogTableArgs{
/// Name:         "MyCatalogTable",
/// DatabaseName: "MyCatalogDatabase",
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
/// import com.pulumi.aws.glue.GlueFunctions;
/// import com.pulumi.aws.glue.inputs.GetCatalogTableArgs;
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
/// final var example = GlueFunctions.getCatalogTable(GetCatalogTableArgs.builder()
/// .name("MyCatalogTable")
/// .databaseName("MyCatalogDatabase")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:glue:getCatalogTable
/// arguments:
/// name: MyCatalogTable
/// databaseName: MyCatalogDatabase
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCatalogTableResult> getCatalogTable(
  GetCatalogTableArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:glue/getCatalogTable:getCatalogTable',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCatalogTableResult.fromMap(result);
}
