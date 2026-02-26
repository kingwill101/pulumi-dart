import 'package:pulumi/pulumi.dart';
import 'get_datasets_args.dart';
import 'get_datasets_result.dart';

/// Get a list of datasets in a GCP project. For more information see
/// the [official documentation](https://cloud.google.com/bigquery/docs)
/// and [API](https://cloud.google.com/bigquery/docs/reference/rest/v2/datasets/list).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const datasets = gcp.bigquery.getDatasets({
/// project: "my-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// datasets = gcp.bigquery.get_datasets(project="my-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var datasets = Gcp.BigQuery.GetDatasets.Invoke(new()
/// {
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
/// _, err := bigquery.GetDatasets(ctx, &bigquery.GetDatasetsArgs{
/// Project: pulumi.StringRef("my-project"),
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
/// import com.pulumi.gcp.bigquery.inputs.GetDatasetsArgs;
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
/// final var datasets = BigqueryFunctions.getDatasets(GetDatasetsArgs.builder()
/// .project("my-project")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// datasets:
/// fn::invoke:
/// function: gcp:bigquery:getDatasets
/// arguments:
/// project: my-project
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDatasetsResult> getDatasets(
  GetDatasetsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getDatasets:getDatasets',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetsResult.fromMap(result);
}
