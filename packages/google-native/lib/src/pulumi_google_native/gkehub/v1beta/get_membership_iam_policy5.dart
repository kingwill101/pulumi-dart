import 'package:pulumi/pulumi.dart' hide Config;
import 'get_membership_iam_policy_args5.dart';
import 'get_membership_iam_policy_result5.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetMembershipIamPolicyResult5> getMembershipIamPolicy5(
  GetMembershipIamPolicyArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getMembershipIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipIamPolicyResult5.fromMap(result);
}
