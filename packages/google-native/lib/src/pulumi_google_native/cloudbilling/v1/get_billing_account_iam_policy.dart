import 'package:pulumi/pulumi.dart';
import 'get_billing_account_iam_policy_args.dart';
import 'get_billing_account_iam_policy_result.dart';

/// Gets the access control policy for a billing account. The caller must have the `billing.accounts.getIamPolicy` permission on the account, which is often given to billing account [viewers](https://cloud.google.com/billing/docs/how-to/billing-access).
Future<GetBillingAccountIamPolicyResult> getBillingAccountIamPolicy(
  GetBillingAccountIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbilling/v1:getBillingAccountIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountIamPolicyResult.fromMap(result);
}
