import 'package:pulumi/pulumi.dart' hide Config;
import 'get_deployment_artifact_args.dart';
import 'get_deployment_artifact_result.dart';

/// Returns a specified artifact.
Future<GetDeploymentArtifactResult> getDeploymentArtifact(
  GetDeploymentArtifactArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getDeploymentArtifact',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeploymentArtifactResult.fromMap(result);
}
