import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_version_args.dart';
import 'get_dataset_version_result.dart';

/// Gets a Dataset version.
Future<GetDatasetVersionResult> getDatasetVersion(
  GetDatasetVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDatasetVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetVersionResult.fromMap(result);
}
