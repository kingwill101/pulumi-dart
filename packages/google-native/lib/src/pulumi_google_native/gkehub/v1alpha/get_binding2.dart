import 'package:pulumi/pulumi.dart';
import 'get_binding_args2.dart';
import 'get_binding_result2.dart';

/// Returns the details of a MembershipBinding.
Future<GetBindingResult2> getBinding2(
  GetBindingArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getBinding',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBindingResult2.fromMap(result);
}
