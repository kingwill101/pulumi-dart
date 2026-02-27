import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_bigquery_v2_args.dart';
import 'get_dataset_bigquery_v2_result.dart';

/// Returns the dataset specified by datasetID.
Future<GetDatasetBigqueryV2Result> getDatasetBigqueryV2(
  GetDatasetBigqueryV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquery/v2:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetBigqueryV2Result.fromMap(result);
}
