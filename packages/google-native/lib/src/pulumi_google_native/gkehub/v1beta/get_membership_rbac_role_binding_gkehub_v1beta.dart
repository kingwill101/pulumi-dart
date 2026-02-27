import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_membership_rbac_role_binding_gkehub_v1beta_args.dart';
import 'get_membership_rbac_role_binding_gkehub_v1beta_result.dart';

/// Returns the details of a Membership RBACRoleBinding.
Future<GetMembershipRbacRoleBindingGkehubV1betaResult>
    getMembershipRbacRoleBindingGkehubV1beta(
  GetMembershipRbacRoleBindingGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getMembershipRbacRoleBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipRbacRoleBindingGkehubV1betaResult.fromMap(result);
}
