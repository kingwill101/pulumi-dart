import 'package:pulumi/pulumi.dart';
import 'get_consent_artifact_args.dart';
import 'get_consent_artifact_result.dart';

/// Gets the specified Consent artifact.
Future<GetConsentArtifactResult> getConsentArtifact(
  GetConsentArtifactArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getConsentArtifact',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConsentArtifactResult.fromMap(result);
}
