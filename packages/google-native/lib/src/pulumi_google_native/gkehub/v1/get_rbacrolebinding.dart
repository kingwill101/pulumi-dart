import 'package:pulumi/pulumi.dart' hide Config;
import 'get_rbacrolebinding_args.dart';
import 'get_rbacrolebinding_result.dart';

/// Returns the details of a Scope RBACRoleBinding.
Future<GetRbacrolebindingResult> getRbacrolebinding(
  GetRbacrolebindingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getRbacrolebinding',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRbacrolebindingResult.fromMap(result);
}
