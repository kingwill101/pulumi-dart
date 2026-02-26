import 'package:pulumi/pulumi.dart';
import 'get_table_args.dart';
import 'get_table_result.dart';

/// Get a specific table in a BigQuery dataset. For more information see
/// the [official documentation](https://cloud.google.com/bigquery/docs)
/// and [API](https://cloud.google.com/bigquery/docs/reference/rest/v2/tables/get).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const table = gcp.bigquery.getTable({
/// project: "my-project",
/// datasetId: "my-bq-dataset",
/// tableId: "my-table",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// table = gcp.bigquery.get_table(project="my-project",
/// dataset_id="my-bq-dataset",
/// table_id="my-table")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var table = Gcp.BigQuery.GetTable.Invoke(new()
/// {
/// Project = "my-project",
/// DatasetId = "my-bq-dataset",
/// TableId = "my-table",
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
/// _, err := bigquery.LookupTable(ctx, &bigquery.LookupTableArgs{
/// Project:   pulumi.StringRef("my-project"),
/// DatasetId: "my-bq-dataset",
/// TableId:   "my-table",
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
/// import com.pulumi.gcp.bigquery.inputs.GetTableArgs;
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
/// final var table = BigqueryFunctions.getTable(GetTableArgs.builder()
/// .project("my-project")
/// .datasetId("my-bq-dataset")
/// .tableId("my-table")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// table:
/// fn::invoke:
/// function: gcp:bigquery:getTable
/// arguments:
/// project: my-project
/// datasetId: my-bq-dataset
/// tableId: my-table
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTableResult> getTable(
  GetTableArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getTable:getTable',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTableResult.fromMap(result);
}
