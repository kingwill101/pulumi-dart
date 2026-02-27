import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_http_health_check_compute_beta_args.dart';
import 'get_http_health_check_compute_beta_result.dart';

/// Returns the specified HttpHealthCheck resource.
Future<GetHttpHealthCheckComputeBetaResult> getHttpHealthCheckComputeBeta(
  GetHttpHealthCheckComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getHttpHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpHealthCheckComputeBetaResult.fromMap(result);
}
