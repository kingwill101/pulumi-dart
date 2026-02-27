import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_artifact_apigeeregistry_v1_args.dart';
import 'get_artifact_apigeeregistry_v1_result.dart';

/// Returns a specified artifact.
Future<GetArtifactApigeeregistryV1Result> getArtifactApigeeregistryV1(
  GetArtifactApigeeregistryV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArtifactApigeeregistryV1Result.fromMap(result);
}
