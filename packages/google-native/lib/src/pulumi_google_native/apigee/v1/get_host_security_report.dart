import 'package:pulumi/pulumi.dart' hide Config;
import 'get_host_security_report_args.dart';
import 'get_host_security_report_result.dart';

/// Get status of a query submitted at host level. If the query is still in progress, the `state` is set to "running" After the query has completed successfully, `state` is set to "completed"
Future<GetHostSecurityReportResult> getHostSecurityReport(
  GetHostSecurityReportArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getHostSecurityReport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHostSecurityReportResult.fromMap(result);
}
