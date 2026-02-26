import 'package:pulumi/pulumi.dart';
import 'get_dataset_args2.dart';
import 'get_dataset_result2.dart';

/// Gets a Dataset.
Future<GetDatasetResult2> getDataset2(
  GetDatasetArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDataset',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult2.fromMap(result);
}
