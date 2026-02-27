import 'package:pulumi/pulumi.dart' hide Config;
import 'get_membership_rbac_role_binding_args2.dart';
import 'get_membership_rbac_role_binding_result2.dart';

/// Returns the details of a Membership RBACRoleBinding.
Future<GetMembershipRbacRoleBindingResult2> getMembershipRbacRoleBinding2(
  GetMembershipRbacRoleBindingArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getMembershipRbacRoleBinding',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipRbacRoleBindingResult2.fromMap(result);
}
