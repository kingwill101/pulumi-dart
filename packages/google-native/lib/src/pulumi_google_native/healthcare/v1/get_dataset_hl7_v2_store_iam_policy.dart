import 'package:pulumi/pulumi.dart';
import 'get_dataset_hl7_v2_store_iam_policy_args.dart';
import 'get_dataset_hl7_v2_store_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDatasetHl7V2StoreIamPolicyResult> getDatasetHl7V2StoreIamPolicy(
  GetDatasetHl7V2StoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getDatasetHl7V2StoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetHl7V2StoreIamPolicyResult.fromMap(result);
}
