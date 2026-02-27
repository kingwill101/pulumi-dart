import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_health_check_compute_beta_args.dart';
import 'get_region_health_check_compute_beta_result.dart';

/// Returns the specified HealthCheck resource.
Future<GetRegionHealthCheckComputeBetaResult> getRegionHealthCheckComputeBeta(
  GetRegionHealthCheckComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckComputeBetaResult.fromMap(result);
}
