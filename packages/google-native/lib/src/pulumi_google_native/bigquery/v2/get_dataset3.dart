import 'package:pulumi/pulumi.dart';
import 'get_dataset_args3.dart';
import 'get_dataset_result3.dart';

/// Returns the dataset specified by datasetID.
Future<GetDatasetResult3> getDataset3(
  GetDatasetArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquery/v2:getDataset',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult3.fromMap(result);
}
