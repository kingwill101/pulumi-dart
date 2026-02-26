import 'package:pulumi/pulumi.dart';
import 'get_logging_server_args.dart';
import 'get_logging_server_result.dart';

/// Gets details of a logging server.
Future<GetLoggingServerResult> getLoggingServer(
  GetLoggingServerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getLoggingServer',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLoggingServerResult.fromMap(result);
}
