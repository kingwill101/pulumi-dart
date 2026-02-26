import 'package:pulumi/pulumi.dart';
import 'get_tables_args.dart';
import 'get_tables_result.dart';

/// Get a list of tables in a BigQuery dataset. For more information see
/// the [official documentation](https://cloud.google.com/bigquery/docs)
/// and [API](https://cloud.google.com/bigquery/docs/reference/rest/v2/tables).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tables = gcp.bigquery.getTables({
/// datasetId: "my-bq-dataset",
/// project: "my-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tables = gcp.bigquery.get_tables(dataset_id="my-bq-dataset",
/// project="my-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var tables = Gcp.BigQuery.GetTables.Invoke(new()
/// {
/// DatasetId = "my-bq-dataset",
/// Project = "my-project",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigquery.GetTables(ctx, &bigquery.GetTablesArgs{
/// DatasetId: "my-bq-dataset",
/// Project:   pulumi.StringRef("my-project"),
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
/// import com.pulumi.gcp.bigquery.BigqueryFunctions;
/// import com.pulumi.gcp.bigquery.inputs.GetTablesArgs;
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
/// final var tables = BigqueryFunctions.getTables(GetTablesArgs.builder()
/// .datasetId("my-bq-dataset")
/// .project("my-project")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// tables:
/// fn::invoke:
/// function: gcp:bigquery:getTables
/// arguments:
/// datasetId: my-bq-dataset
/// project: my-project
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTablesResult> getTables(
  GetTablesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getTables:getTables',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTablesResult.fromMap(result);
}
