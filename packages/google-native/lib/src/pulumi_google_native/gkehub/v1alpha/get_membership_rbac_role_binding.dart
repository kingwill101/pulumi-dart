import 'package:pulumi/pulumi.dart';
import 'get_membership_rbac_role_binding_args.dart';
import 'get_membership_rbac_role_binding_result.dart';

/// Returns the details of a Membership RBACRoleBinding.
Future<GetMembershipRbacRoleBindingResult> getMembershipRbacRoleBinding(
  GetMembershipRbacRoleBindingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getMembershipRbacRoleBinding',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipRbacRoleBindingResult.fromMap(result);
}
