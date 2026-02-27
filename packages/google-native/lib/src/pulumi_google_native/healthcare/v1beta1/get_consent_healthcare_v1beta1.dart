import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consent_healthcare_v1beta1_args.dart';
import 'get_consent_healthcare_v1beta1_result.dart';

/// Gets the specified revision of a Consent, or the latest revision if `revision_id` is not specified in the resource name.
Future<GetConsentHealthcareV1beta1Result> getConsentHealthcareV1beta1(
  GetConsentHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getConsent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsentHealthcareV1beta1Result.fromMap(result);
}
