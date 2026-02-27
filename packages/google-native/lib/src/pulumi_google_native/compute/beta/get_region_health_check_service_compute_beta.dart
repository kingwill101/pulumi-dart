import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_health_check_service_compute_beta_args.dart';
import 'get_region_health_check_service_compute_beta_result.dart';

/// Returns the specified regional HealthCheckService resource.
Future<GetRegionHealthCheckServiceComputeBetaResult>
    getRegionHealthCheckServiceComputeBeta(
  GetRegionHealthCheckServiceComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionHealthCheckService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckServiceComputeBetaResult.fromMap(result);
}
