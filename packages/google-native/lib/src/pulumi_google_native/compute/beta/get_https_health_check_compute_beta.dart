import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_https_health_check_compute_beta_args.dart';
import 'get_https_health_check_compute_beta_result.dart';

/// Returns the specified HttpsHealthCheck resource.
Future<GetHttpsHealthCheckComputeBetaResult> getHttpsHealthCheckComputeBeta(
  GetHttpsHealthCheckComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getHttpsHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpsHealthCheckComputeBetaResult.fromMap(result);
}
