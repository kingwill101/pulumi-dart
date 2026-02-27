import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deployment_artifact_args.dart';
import 'get_deployment_artifact_result.dart';

/// Returns a specified artifact.
Future<GetDeploymentArtifactResult> getDeploymentArtifact(
  GetDeploymentArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getDeploymentArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentArtifactResult.fromMap(result);
}
