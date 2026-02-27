import 'package:pulumi/pulumi.dart';
import 'get_datasets_args.dart';
import 'get_datasets_result.dart';

/// Get a list of datasets in a GCP project. For more information see
/// the [official documentation](https://cloud.google.com/bigquery/docs)
/// and [API](https://cloud.google.com/bigquery/docs/reference/rest/v2/datasets/list).
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
