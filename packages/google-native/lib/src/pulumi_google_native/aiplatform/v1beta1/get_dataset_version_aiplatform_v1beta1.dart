import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_version_aiplatform_v1beta1_args.dart';
import 'get_dataset_version_aiplatform_v1beta1_result.dart';

/// Gets a Dataset version.
Future<GetDatasetVersionAiplatformV1beta1Result>
    getDatasetVersionAiplatformV1beta1(
  GetDatasetVersionAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDatasetVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetVersionAiplatformV1beta1Result.fromMap(result);
}
