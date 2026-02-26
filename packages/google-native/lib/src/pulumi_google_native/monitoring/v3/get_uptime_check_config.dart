import 'package:pulumi/pulumi.dart';
import 'get_uptime_check_config_args.dart';
import 'get_uptime_check_config_result.dart';

/// Gets a single Uptime check configuration.
Future<GetUptimeCheckConfigResult> getUptimeCheckConfig(
  GetUptimeCheckConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getUptimeCheckConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUptimeCheckConfigResult.fromMap(result);
}
