import 'package:pulumi/pulumi.dart';
import 'get_membership_iam_policy_args3.dart';
import 'get_membership_iam_policy_result3.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetMembershipIamPolicyResult3> getMembershipIamPolicy3(
  GetMembershipIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getMembershipIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipIamPolicyResult3.fromMap(result);
}
