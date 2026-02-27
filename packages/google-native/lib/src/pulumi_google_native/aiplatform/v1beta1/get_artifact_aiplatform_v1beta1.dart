import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_artifact_aiplatform_v1beta1_args.dart';
import 'get_artifact_aiplatform_v1beta1_result.dart';

/// Retrieves a specific Artifact.
Future<GetArtifactAiplatformV1beta1Result> getArtifactAiplatformV1beta1(
  GetArtifactAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArtifactAiplatformV1beta1Result.fromMap(result);
}
