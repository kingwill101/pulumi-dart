import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consent_artifact_healthcare_v1beta1_args.dart';
import 'get_consent_artifact_healthcare_v1beta1_result.dart';

/// Gets the specified Consent artifact.
Future<GetConsentArtifactHealthcareV1beta1Result>
    getConsentArtifactHealthcareV1beta1(
  GetConsentArtifactHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getConsentArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsentArtifactHealthcareV1beta1Result.fromMap(result);
}
