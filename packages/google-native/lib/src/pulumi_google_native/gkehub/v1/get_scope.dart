import 'package:pulumi/pulumi.dart';
import 'get_scope_args.dart';
import 'get_scope_result.dart';

/// Returns the details of a Scope.
Future<GetScopeResult> getScope(
  GetScopeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getScope',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScopeResult.fromMap(result);
}
