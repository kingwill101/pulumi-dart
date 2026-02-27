import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_binding_gkehub_v1beta_args.dart';
import 'get_binding_gkehub_v1beta_result.dart';

/// Returns the details of a MembershipBinding.
Future<GetBindingGkehubV1betaResult> getBindingGkehubV1beta(
  GetBindingGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBindingGkehubV1betaResult.fromMap(result);
}
