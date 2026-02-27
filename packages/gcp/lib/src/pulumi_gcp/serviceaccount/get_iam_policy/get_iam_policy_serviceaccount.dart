import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iam_policy_serviceaccount_args.dart';
import 'get_iam_policy_serviceaccount_result.dart';

/// Retrieves the current IAM policy data for a service account.
///
/// ## example
Future<GetIamPolicyServiceaccountResult> getIamPolicyServiceaccount(
  GetIamPolicyServiceaccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getIamPolicy:getIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamPolicyServiceaccountResult.fromMap(result);
}
