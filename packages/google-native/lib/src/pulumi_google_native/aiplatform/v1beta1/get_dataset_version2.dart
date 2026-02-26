import 'package:pulumi/pulumi.dart';
import 'get_dataset_version_args2.dart';
import 'get_dataset_version_result2.dart';

/// Gets a Dataset version.
Future<GetDatasetVersionResult2> getDatasetVersion2(
  GetDatasetVersionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDatasetVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetVersionResult2.fromMap(result);
}
