import 'package:pulumi/pulumi.dart';
import 'get_consent_store_iam_policy_args.dart';
import 'get_consent_store_iam_policy_result.dart';

/// Retrieves the current IAM policy data for consentstore
Future<GetConsentStoreIamPolicyResult> getConsentStoreIamPolicy(
  GetConsentStoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getConsentStoreIamPolicy:getConsentStoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConsentStoreIamPolicyResult.fromMap(result);
}
