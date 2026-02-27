import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consent_artifact_args.dart';
import 'get_consent_artifact_result.dart';

/// Gets the specified Consent artifact.
Future<GetConsentArtifactResult> getConsentArtifact(
  GetConsentArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getConsentArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsentArtifactResult.fromMap(result);
}
