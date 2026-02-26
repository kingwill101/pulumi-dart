import 'package:pulumi/pulumi.dart';
import 'get_health_check_args3.dart';
import 'get_health_check_result3.dart';

/// Returns the specified HealthCheck resource.
Future<GetHealthCheckResult3> getHealthCheck3(
  GetHealthCheckArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getHealthCheck',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHealthCheckResult3.fromMap(result);
}
