import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rbacrolebinding_args.dart';
import 'get_rbacrolebinding_result.dart';

/// Returns the details of a Scope RBACRoleBinding.
Future<GetRbacrolebindingResult> getRbacrolebinding(
  GetRbacrolebindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getRbacrolebinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRbacrolebindingResult.fromMap(result);
}
