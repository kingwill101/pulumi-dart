import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scope_rbac_role_binding_gkehub_v1beta_args.dart';
import 'get_scope_rbac_role_binding_gkehub_v1beta_result.dart';

/// Returns the details of a Scope RBACRoleBinding.
Future<GetScopeRbacRoleBindingGkehubV1betaResult>
    getScopeRbacRoleBindingGkehubV1beta(
  GetScopeRbacRoleBindingGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getScopeRbacRoleBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeRbacRoleBindingGkehubV1betaResult.fromMap(result);
}
