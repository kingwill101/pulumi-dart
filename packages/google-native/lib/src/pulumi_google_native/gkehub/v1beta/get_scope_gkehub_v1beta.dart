import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scope_gkehub_v1beta_args.dart';
import 'get_scope_gkehub_v1beta_result.dart';

/// Returns the details of a Scope.
Future<GetScopeGkehubV1betaResult> getScopeGkehubV1beta(
  GetScopeGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeGkehubV1betaResult.fromMap(result);
}
