import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_http_health_check_args.dart';
import 'get_http_health_check_result.dart';

/// Returns the specified HttpHealthCheck resource.
Future<GetHttpHealthCheckResult> getHttpHealthCheck(
  GetHttpHealthCheckArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getHttpHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpHealthCheckResult.fromMap(result);
}
