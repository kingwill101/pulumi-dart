import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_artifact_args.dart';
import 'get_artifact_result.dart';

/// Retrieves a specific Artifact.
Future<GetArtifactResult> getArtifact(
  GetArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArtifactResult.fromMap(result);
}
