import 'package:pulumi/pulumi.dart';
import 'get_insights_dataset_config_args.dart';
import 'get_insights_dataset_config_result.dart';

/// Use this data source to get information about a Storage Insights Dataset Config resource.
/// See [the official documentation](https://cloud.google.com/storage/docs/insights/datasets)
/// and
/// [API](https://cloud.google.com/storage/docs/insights/reference/rest/v1/projects.locations.datasetConfigs).
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sample_config = gcp.storage.getInsightsDatasetConfig({
/// project: "sample_project",
/// location: "sample_location",
/// datasetConfigId: "sample_dataset_config_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sample_config = gcp.storage.get_insights_dataset_config(project="sample_project",
/// location="sample_location",
/// dataset_config_id="sample_dataset_config_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var sample_config = Gcp.Storage.GetInsightsDatasetConfig.Invoke(new()
/// {
/// Project = "sample_project",
/// Location = "sample_location",
/// DatasetConfigId = "sample_dataset_config_id",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.LookupInsightsDatasetConfig(ctx, &storage.LookupInsightsDatasetConfigArgs{
/// Project:         pulumi.StringRef("sample_project"),
/// Location:        "sample_location",
/// DatasetConfigId: "sample_dataset_config_id",
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
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetInsightsDatasetConfigArgs;
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
/// final var sample-config = StorageFunctions.getInsightsDatasetConfig(GetInsightsDatasetConfigArgs.builder()
/// .project("sample_project")
/// .location("sample_location")
/// .datasetConfigId("sample_dataset_config_id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// sample-config:
/// fn::invoke:
/// function: gcp:storage:getInsightsDatasetConfig
/// arguments:
/// project: sample_project
/// location: sample_location
/// datasetConfigId: sample_dataset_config_id
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInsightsDatasetConfigResult> getInsightsDatasetConfig(
  GetInsightsDatasetConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getInsightsDatasetConfig:getInsightsDatasetConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInsightsDatasetConfigResult.fromMap(result);
}
