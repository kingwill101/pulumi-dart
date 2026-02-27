import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_iam_policy_args.dart';
import 'get_account_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Billing Account.
///
/// ## example
Future<GetAccountIamPolicyResult> getAccountIamPolicy(
  GetAccountIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:billing/getAccountIamPolicy:getAccountIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountIamPolicyResult.fromMap(result);
}
