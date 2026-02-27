import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_health_check_args.dart';
import 'get_health_check_result.dart';

/// Get information about a HealthCheck.
Future<GetHealthCheckResult> getHealthCheck(
  GetHealthCheckArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getHealthCheck:getHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHealthCheckResult.fromMap(result);
}
