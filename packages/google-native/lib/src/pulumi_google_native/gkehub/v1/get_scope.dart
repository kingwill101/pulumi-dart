import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scope_args.dart';
import 'get_scope_result.dart';

/// Returns the details of a Scope.
Future<GetScopeResult> getScope(
  GetScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeResult.fromMap(result);
}
