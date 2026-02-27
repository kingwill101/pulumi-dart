import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_health_check_args.dart';
import 'get_region_health_check_result.dart';

/// Returns the specified HealthCheck resource.
Future<GetRegionHealthCheckResult> getRegionHealthCheck(
  GetRegionHealthCheckArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckResult.fromMap(result);
}
