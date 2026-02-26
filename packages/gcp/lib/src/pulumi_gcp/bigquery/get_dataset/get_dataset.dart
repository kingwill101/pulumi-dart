import 'package:pulumi/pulumi.dart';
import 'get_dataset_args.dart';
import 'get_dataset_result.dart';

/// Get information about a BigQuery dataset. For more information see
/// the [official documentation](https://cloud.google.com/bigquery/docs)
/// and [API](https://cloud.google.com/bigquery/docs/reference/rest/v2/datasets).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = gcp.bigquery.getDataset({
/// datasetId: "my-bq-dataset",
/// project: "my-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.get_dataset(dataset_id="my-bq-dataset",
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
/// var dataset = Gcp.BigQuery.GetDataset.Invoke(new()
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
/// _, err := bigquery.LookupDataset(ctx, &bigquery.LookupDatasetArgs{
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
/// import com.pulumi.gcp.bigquery.inputs.GetDatasetArgs;
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
/// final var dataset = BigqueryFunctions.getDataset(GetDatasetArgs.builder()
/// .datasetId("my-bq-dataset")
/// .project("my-project")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// dataset:
/// fn::invoke:
/// function: gcp:bigquery:getDataset
/// arguments:
/// datasetId: my-bq-dataset
/// project: my-project
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDatasetResult> getDataset(
  GetDatasetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getDataset:getDataset',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult.fromMap(result);
}
