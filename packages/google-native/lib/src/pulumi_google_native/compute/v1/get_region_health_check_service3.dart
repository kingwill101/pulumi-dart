import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_health_check_service_args3.dart';
import 'get_region_health_check_service_result3.dart';

/// Returns the specified regional HealthCheckService resource.
Future<GetRegionHealthCheckServiceResult3> getRegionHealthCheckService3(
  GetRegionHealthCheckServiceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionHealthCheckService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckServiceResult3.fromMap(result);
}
