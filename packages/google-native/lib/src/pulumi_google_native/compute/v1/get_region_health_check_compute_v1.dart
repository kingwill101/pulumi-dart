import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_health_check_compute_v1_args.dart';
import 'get_region_health_check_compute_v1_result.dart';

/// Returns the specified HealthCheck resource.
Future<GetRegionHealthCheckComputeV1Result> getRegionHealthCheckComputeV1(
  GetRegionHealthCheckComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckComputeV1Result.fromMap(result);
}
