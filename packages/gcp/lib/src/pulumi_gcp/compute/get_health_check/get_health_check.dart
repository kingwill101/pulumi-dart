import 'package:pulumi/pulumi.dart';
import 'get_health_check_args.dart';
import 'get_health_check_result.dart';

/// Get information about a HealthCheck.
Future<GetHealthCheckResult> getHealthCheck(
  GetHealthCheckArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getHealthCheck:getHealthCheck',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHealthCheckResult.fromMap(result);
}
