import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_http_health_check_compute_v1_args.dart';
import 'get_http_health_check_compute_v1_result.dart';

/// Returns the specified HttpHealthCheck resource.
Future<GetHttpHealthCheckComputeV1Result> getHttpHealthCheckComputeV1(
  GetHttpHealthCheckComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getHttpHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpHealthCheckComputeV1Result.fromMap(result);
}
