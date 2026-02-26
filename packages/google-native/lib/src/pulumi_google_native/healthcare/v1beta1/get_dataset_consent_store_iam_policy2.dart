import 'package:pulumi/pulumi.dart';
import 'get_dataset_consent_store_iam_policy_args2.dart';
import 'get_dataset_consent_store_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDatasetConsentStoreIamPolicyResult2> getDatasetConsentStoreIamPolicy2(
  GetDatasetConsentStoreIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDatasetConsentStoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetConsentStoreIamPolicyResult2.fromMap(result);
}
