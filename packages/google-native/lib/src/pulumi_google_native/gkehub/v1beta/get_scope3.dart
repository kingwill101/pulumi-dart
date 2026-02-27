import 'package:pulumi/pulumi.dart' hide Config;
import 'get_scope_args3.dart';
import 'get_scope_result3.dart';

/// Returns the details of a Scope.
Future<GetScopeResult3> getScope3(
  GetScopeArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getScope',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScopeResult3.fromMap(result);
}
