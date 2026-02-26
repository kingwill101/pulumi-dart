import 'package:pulumi/pulumi.dart';
import 'get_artifact_args.dart';
import 'get_artifact_result.dart';

/// Retrieves a specific Artifact.
Future<GetArtifactResult> getArtifact(
  GetArtifactArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getArtifact',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetArtifactResult.fromMap(result);
}
