import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_health_check_service_compute_v1_args.dart';
import 'get_region_health_check_service_compute_v1_result.dart';

/// Returns the specified regional HealthCheckService resource.
Future<GetRegionHealthCheckServiceComputeV1Result>
    getRegionHealthCheckServiceComputeV1(
  GetRegionHealthCheckServiceComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionHealthCheckService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckServiceComputeV1Result.fromMap(result);
}
