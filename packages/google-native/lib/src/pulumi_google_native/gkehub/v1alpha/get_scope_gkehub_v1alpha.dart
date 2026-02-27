import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scope_gkehub_v1alpha_args.dart';
import 'get_scope_gkehub_v1alpha_result.dart';

/// Returns the details of a Scope.
Future<GetScopeGkehubV1alphaResult> getScopeGkehubV1alpha(
  GetScopeGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeGkehubV1alphaResult.fromMap(result);
}
