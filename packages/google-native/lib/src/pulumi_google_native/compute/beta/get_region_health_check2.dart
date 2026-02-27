import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_health_check_args2.dart';
import 'get_region_health_check_result2.dart';

/// Returns the specified HealthCheck resource.
Future<GetRegionHealthCheckResult2> getRegionHealthCheck2(
  GetRegionHealthCheckArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionHealthCheck',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckResult2.fromMap(result);
}
