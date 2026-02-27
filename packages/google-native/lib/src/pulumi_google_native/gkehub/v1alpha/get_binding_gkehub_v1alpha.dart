import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_binding_gkehub_v1alpha_args.dart';
import 'get_binding_gkehub_v1alpha_result.dart';

/// Returns the details of a MembershipBinding.
Future<GetBindingGkehubV1alphaResult> getBindingGkehubV1alpha(
  GetBindingGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBindingGkehubV1alphaResult.fromMap(result);
}
