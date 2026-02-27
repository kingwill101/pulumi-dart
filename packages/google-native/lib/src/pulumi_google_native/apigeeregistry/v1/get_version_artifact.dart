import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_version_artifact_args.dart';
import 'get_version_artifact_result.dart';

/// Returns a specified artifact.
Future<GetVersionArtifactResult> getVersionArtifact(
  GetVersionArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getVersionArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionArtifactResult.fromMap(result);
}
