import 'package:pulumi/pulumi.dart';
import 'get_membership_iam_policy_args.dart';
import 'get_membership_iam_policy_result.dart';

/// Retrieves the current IAM policy data for membership
Future<GetMembershipIamPolicyResult> getMembershipIamPolicy(
  GetMembershipIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getMembershipIamPolicy:getMembershipIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipIamPolicyResult.fromMap(result);
}
