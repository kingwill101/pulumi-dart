import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_debug_session_args.dart';
import 'get_debug_session_result.dart';

/// Retrieves a debug session.
Future<GetDebugSessionResult> getDebugSession(
  GetDebugSessionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDebugSession',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDebugSessionResult.fromMap(result);
}
