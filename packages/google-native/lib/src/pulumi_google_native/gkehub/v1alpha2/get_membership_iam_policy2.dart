import 'package:pulumi/pulumi.dart' hide Config;
import 'get_membership_iam_policy_args2.dart';
import 'get_membership_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetMembershipIamPolicyResult2> getMembershipIamPolicy2(
  GetMembershipIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha2:getMembershipIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipIamPolicyResult2.fromMap(result);
}
