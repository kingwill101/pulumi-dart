import 'package:pulumi/pulumi.dart';
import 'get_debug_session_args.dart';
import 'get_debug_session_result.dart';

/// Retrieves a debug session.
Future<GetDebugSessionResult> getDebugSession(
  GetDebugSessionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDebugSession',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDebugSessionResult.fromMap(result);
}
