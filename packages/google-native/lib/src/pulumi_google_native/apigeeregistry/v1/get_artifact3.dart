import 'package:pulumi/pulumi.dart';
import 'get_artifact_args3.dart';
import 'get_artifact_result3.dart';

/// Returns a specified artifact.
Future<GetArtifactResult3> getArtifact3(
  GetArtifactArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getArtifact',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetArtifactResult3.fromMap(result);
}
