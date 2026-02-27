import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_health_check_compute_v1_args.dart';
import 'get_health_check_compute_v1_result.dart';

/// Returns the specified HealthCheck resource.
Future<GetHealthCheckComputeV1Result> getHealthCheckComputeV1(
  GetHealthCheckComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHealthCheckComputeV1Result.fromMap(result);
}
