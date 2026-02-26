import 'package:pulumi/pulumi.dart';
import 'get_binding_args.dart';
import 'get_binding_result.dart';

/// Returns the details of a MembershipBinding.
Future<GetBindingResult> getBinding(
  GetBindingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getBinding',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBindingResult.fromMap(result);
}
