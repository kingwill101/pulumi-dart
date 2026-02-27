import 'package:pulumi/pulumi.dart' hide Config;
import 'get_scope_args2.dart';
import 'get_scope_result2.dart';

/// Returns the details of a Scope.
Future<GetScopeResult2> getScope2(
  GetScopeArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getScope',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScopeResult2.fromMap(result);
}
