import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_uptime_check_ips_result.dart';

/// Returns the list of IP addresses that checkers run from. For more information see
/// the [official documentation](https://cloud.google.com/monitoring/uptime-checks#get-ips).
Future<GetUptimeCheckIPsResult> getUptimeCheckIPs({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getUptimeCheckIPs:getUptimeCheckIPs',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUptimeCheckIPsResult.fromMap(result);
}
