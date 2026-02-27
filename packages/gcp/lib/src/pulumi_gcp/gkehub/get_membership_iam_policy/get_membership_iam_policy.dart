import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_membership_iam_policy_args.dart';
import 'get_membership_iam_policy_result.dart';

/// Retrieves the current IAM policy data for membership
Future<GetMembershipIamPolicyResult> getMembershipIamPolicy(
  GetMembershipIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getMembershipIamPolicy:getMembershipIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipIamPolicyResult.fromMap(result);
}
