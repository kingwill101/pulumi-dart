import 'package:pulumi/pulumi.dart';
import 'get_region_health_check_args3.dart';
import 'get_region_health_check_result3.dart';

/// Returns the specified HealthCheck resource.
Future<GetRegionHealthCheckResult3> getRegionHealthCheck3(
  GetRegionHealthCheckArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionHealthCheck',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckResult3.fromMap(result);
}
