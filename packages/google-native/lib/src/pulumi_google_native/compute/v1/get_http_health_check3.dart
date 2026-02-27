import 'package:pulumi/pulumi.dart' hide Config;
import 'get_http_health_check_args3.dart';
import 'get_http_health_check_result3.dart';

/// Returns the specified HttpHealthCheck resource.
Future<GetHttpHealthCheckResult3> getHttpHealthCheck3(
  GetHttpHealthCheckArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getHttpHealthCheck',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHttpHealthCheckResult3.fromMap(result);
}
