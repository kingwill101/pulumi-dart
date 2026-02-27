import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_health_check_compute_beta_args.dart';
import 'get_health_check_compute_beta_result.dart';

/// Returns the specified HealthCheck resource.
Future<GetHealthCheckComputeBetaResult> getHealthCheckComputeBeta(
  GetHealthCheckComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHealthCheckComputeBetaResult.fromMap(result);
}
