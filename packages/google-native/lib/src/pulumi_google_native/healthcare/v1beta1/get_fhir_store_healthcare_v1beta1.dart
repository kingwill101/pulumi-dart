import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fhir_store_healthcare_v1beta1_args.dart';
import 'get_fhir_store_healthcare_v1beta1_result.dart';

/// Gets the configuration of the specified FHIR store.
Future<GetFhirStoreHealthcareV1beta1Result> getFhirStoreHealthcareV1beta1(
  GetFhirStoreHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getFhirStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFhirStoreHealthcareV1beta1Result.fromMap(result);
}
