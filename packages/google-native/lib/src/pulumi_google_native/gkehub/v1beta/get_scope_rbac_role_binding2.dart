import 'package:pulumi/pulumi.dart' hide Config;
import 'get_scope_rbac_role_binding_args2.dart';
import 'get_scope_rbac_role_binding_result2.dart';

/// Returns the details of a Scope RBACRoleBinding.
Future<GetScopeRbacRoleBindingResult2> getScopeRbacRoleBinding2(
  GetScopeRbacRoleBindingArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getScopeRbacRoleBinding',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScopeRbacRoleBindingResult2.fromMap(result);
}
