import 'package:pulumi/pulumi.dart' hide Config;
import 'get_http_health_check_args2.dart';
import 'get_http_health_check_result2.dart';

/// Returns the specified HttpHealthCheck resource.
Future<GetHttpHealthCheckResult2> getHttpHealthCheck2(
  GetHttpHealthCheckArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getHttpHealthCheck',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHttpHealthCheckResult2.fromMap(result);
}
