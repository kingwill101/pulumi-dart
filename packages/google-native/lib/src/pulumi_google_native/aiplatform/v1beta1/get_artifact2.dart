import 'package:pulumi/pulumi.dart' hide Config;
import 'get_artifact_args2.dart';
import 'get_artifact_result2.dart';

/// Retrieves a specific Artifact.
Future<GetArtifactResult2> getArtifact2(
  GetArtifactArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getArtifact',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetArtifactResult2.fromMap(result);
}
