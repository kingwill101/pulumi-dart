import 'package:pulumi/pulumi.dart';
import 'get_health_check_args2.dart';
import 'get_health_check_result2.dart';

/// Returns the specified HealthCheck resource.
Future<GetHealthCheckResult2> getHealthCheck2(
  GetHealthCheckArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getHealthCheck',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHealthCheckResult2.fromMap(result);
}
