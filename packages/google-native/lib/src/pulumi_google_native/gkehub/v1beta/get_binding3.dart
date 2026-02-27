import 'package:pulumi/pulumi.dart' hide Config;
import 'get_binding_args3.dart';
import 'get_binding_result3.dart';

/// Returns the details of a MembershipBinding.
Future<GetBindingResult3> getBinding3(
  GetBindingArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getBinding',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBindingResult3.fromMap(result);
}
