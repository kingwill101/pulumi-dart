import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_binding_args.dart';
import 'get_binding_result.dart';

/// Returns the details of a MembershipBinding.
Future<GetBindingResult> getBinding(
  GetBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBindingResult.fromMap(result);
}
