import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_https_health_check_compute_v1_args.dart';
import 'get_https_health_check_compute_v1_result.dart';

/// Returns the specified HttpsHealthCheck resource.
Future<GetHttpsHealthCheckComputeV1Result> getHttpsHealthCheckComputeV1(
  GetHttpsHealthCheckComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getHttpsHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpsHealthCheckComputeV1Result.fromMap(result);
}
