import 'package:pulumi/pulumi.dart';
import 'get_https_health_check_args3.dart';
import 'get_https_health_check_result3.dart';

/// Returns the specified HttpsHealthCheck resource.
Future<GetHttpsHealthCheckResult3> getHttpsHealthCheck3(
  GetHttpsHealthCheckArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getHttpsHealthCheck',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHttpsHealthCheckResult3.fromMap(result);
}
