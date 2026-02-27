import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_health_check_service_args.dart';
import 'get_region_health_check_service_result.dart';

/// Returns the specified regional HealthCheckService resource.
Future<GetRegionHealthCheckServiceResult> getRegionHealthCheckService(
  GetRegionHealthCheckServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionHealthCheckService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckServiceResult.fromMap(result);
}
