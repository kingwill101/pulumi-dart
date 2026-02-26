import 'package:pulumi/pulumi.dart';
import 'get_version_artifact_args.dart';
import 'get_version_artifact_result.dart';

/// Returns a specified artifact.
Future<GetVersionArtifactResult> getVersionArtifact(
  GetVersionArtifactArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getVersionArtifact',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVersionArtifactResult.fromMap(result);
}
