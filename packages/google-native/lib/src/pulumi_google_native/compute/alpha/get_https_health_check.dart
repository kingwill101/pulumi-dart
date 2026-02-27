import 'package:pulumi/pulumi.dart' hide Config;
import 'get_https_health_check_args.dart';
import 'get_https_health_check_result.dart';

/// Returns the specified HttpsHealthCheck resource.
Future<GetHttpsHealthCheckResult> getHttpsHealthCheck(
  GetHttpsHealthCheckArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getHttpsHealthCheck',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHttpsHealthCheckResult.fromMap(result);
}
