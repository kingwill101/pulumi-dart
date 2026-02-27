import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_insights_dataset_config_args.dart';
import 'get_insights_dataset_config_result.dart';

/// Use this data source to get information about a Storage Insights Dataset Config resource.
/// See [the official documentation](https://cloud.google.com/storage/docs/insights/datasets)
/// and
/// [API](https://cloud.google.com/storage/docs/insights/reference/rest/v1/projects.locations.datasetConfigs).
Future<GetInsightsDatasetConfigResult> getInsightsDatasetConfig(
  GetInsightsDatasetConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getInsightsDatasetConfig:getInsightsDatasetConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInsightsDatasetConfigResult.fromMap(result);
}
