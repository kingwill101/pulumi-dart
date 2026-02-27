import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_membership_iam_policy_gkehub_v1alpha2_args.dart';
import 'get_membership_iam_policy_gkehub_v1alpha2_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetMembershipIamPolicyGkehubV1alpha2Result>
    getMembershipIamPolicyGkehubV1alpha2(
  GetMembershipIamPolicyGkehubV1alpha2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha2:getMembershipIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipIamPolicyGkehubV1alpha2Result.fromMap(result);
}
