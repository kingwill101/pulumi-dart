import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_membership_iam_policy_gkehub_v1beta1_args.dart';
import 'get_membership_iam_policy_gkehub_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetMembershipIamPolicyGkehubV1beta1Result>
    getMembershipIamPolicyGkehubV1beta1(
  GetMembershipIamPolicyGkehubV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta1:getMembershipIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipIamPolicyGkehubV1beta1Result.fromMap(result);
}
