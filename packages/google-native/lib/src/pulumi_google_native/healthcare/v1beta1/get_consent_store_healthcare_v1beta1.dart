import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consent_store_healthcare_v1beta1_args.dart';
import 'get_consent_store_healthcare_v1beta1_result.dart';

/// Gets the specified consent store.
Future<GetConsentStoreHealthcareV1beta1Result> getConsentStoreHealthcareV1beta1(
  GetConsentStoreHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getConsentStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsentStoreHealthcareV1beta1Result.fromMap(result);
}
