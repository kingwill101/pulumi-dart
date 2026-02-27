import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_args.dart';
import 'get_dataset_result.dart';

/// Get information about a BigQuery dataset. For more information see
/// the [official documentation](https://cloud.google.com/bigquery/docs)
/// and [API](https://cloud.google.com/bigquery/docs/reference/rest/v2/datasets).
Future<GetDatasetResult> getDataset(
  GetDatasetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getDataset:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult.fromMap(result);
}
