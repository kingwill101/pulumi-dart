import 'package:pulumi/pulumi.dart';
import 'get_http_health_check_args.dart';
import 'get_http_health_check_result.dart';

/// Returns the specified HttpHealthCheck resource.
Future<GetHttpHealthCheckResult> getHttpHealthCheck(
  GetHttpHealthCheckArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getHttpHealthCheck',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHttpHealthCheckResult.fromMap(result);
}
