import 'package:pulumi/pulumi.dart';
import 'get_dataset_args.dart';
import 'get_dataset_result.dart';

/// Gets a Dataset.
Future<GetDatasetResult> getDataset(
  GetDatasetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDataset',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult.fromMap(result);
}
