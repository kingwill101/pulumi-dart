import 'package:pulumi/pulumi.dart' hide Config;
import 'get_dataset_consent_store_iam_policy_args.dart';
import 'get_dataset_consent_store_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDatasetConsentStoreIamPolicyResult> getDatasetConsentStoreIamPolicy(
  GetDatasetConsentStoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getDatasetConsentStoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetConsentStoreIamPolicyResult.fromMap(result);
}
