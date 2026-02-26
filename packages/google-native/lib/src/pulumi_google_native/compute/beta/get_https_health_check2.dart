import 'package:pulumi/pulumi.dart';
import 'get_https_health_check_args2.dart';
import 'get_https_health_check_result2.dart';

/// Returns the specified HttpsHealthCheck resource.
Future<GetHttpsHealthCheckResult2> getHttpsHealthCheck2(
  GetHttpsHealthCheckArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getHttpsHealthCheck',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHttpsHealthCheckResult2.fromMap(result);
}
