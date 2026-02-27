import 'package:pulumi/pulumi.dart';
import 'get_account_iam_policy_args.dart';
import 'get_account_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Billing Account.
///
/// ## example
Future<GetAccountIamPolicyResult> getAccountIamPolicy(
  GetAccountIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:billing/getAccountIamPolicy:getAccountIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccountIamPolicyResult.fromMap(result);
}
