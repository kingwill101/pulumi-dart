import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hl7_v2_store_healthcare_v1beta1_args.dart';
import 'get_hl7_v2_store_healthcare_v1beta1_result.dart';

/// Gets the specified HL7v2 store.
Future<GetHl7V2StoreHealthcareV1beta1Result> getHl7V2StoreHealthcareV1beta1(
  GetHl7V2StoreHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getHl7V2Store',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHl7V2StoreHealthcareV1beta1Result.fromMap(result);
}
