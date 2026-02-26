import 'package:pulumi/pulumi.dart';
import 'get_consent_artifact_args2.dart';
import 'get_consent_artifact_result2.dart';

/// Gets the specified Consent artifact.
Future<GetConsentArtifactResult2> getConsentArtifact2(
  GetConsentArtifactArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getConsentArtifact',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConsentArtifactResult2.fromMap(result);
}
