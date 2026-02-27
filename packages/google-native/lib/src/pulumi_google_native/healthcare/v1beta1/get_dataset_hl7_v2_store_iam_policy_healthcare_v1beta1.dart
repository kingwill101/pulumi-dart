import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_hl7_v2_store_iam_policy_healthcare_v1beta1_args.dart';
import 'get_dataset_hl7_v2_store_iam_policy_healthcare_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDatasetHl7V2StoreIamPolicyHealthcareV1beta1Result>
    getDatasetHl7V2StoreIamPolicyHealthcareV1beta1(
  GetDatasetHl7V2StoreIamPolicyHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDatasetHl7V2StoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetHl7V2StoreIamPolicyHealthcareV1beta1Result.fromMap(result);
}
