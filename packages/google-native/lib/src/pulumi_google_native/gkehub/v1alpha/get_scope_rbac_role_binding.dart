import 'package:pulumi/pulumi.dart' hide Config;
import 'get_scope_rbac_role_binding_args.dart';
import 'get_scope_rbac_role_binding_result.dart';

/// Returns the details of a Scope RBACRoleBinding.
Future<GetScopeRbacRoleBindingResult> getScopeRbacRoleBinding(
  GetScopeRbacRoleBindingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getScopeRbacRoleBinding',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScopeRbacRoleBindingResult.fromMap(result);
}
