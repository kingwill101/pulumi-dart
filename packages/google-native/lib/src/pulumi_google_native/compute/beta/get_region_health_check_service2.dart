import 'package:pulumi/pulumi.dart';
import 'get_region_health_check_service_args2.dart';
import 'get_region_health_check_service_result2.dart';

/// Returns the specified regional HealthCheckService resource.
Future<GetRegionHealthCheckServiceResult2> getRegionHealthCheckService2(
  GetRegionHealthCheckServiceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionHealthCheckService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckServiceResult2.fromMap(result);
}
