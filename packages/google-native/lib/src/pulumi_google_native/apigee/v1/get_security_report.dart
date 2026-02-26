import 'package:pulumi/pulumi.dart';
import 'get_security_report_args.dart';
import 'get_security_report_result.dart';

/// Get security report status If the query is still in progress, the `state` is set to "running" After the query has completed successfully, `state` is set to "completed"
Future<GetSecurityReportResult> getSecurityReport(
  GetSecurityReportArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSecurityReport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityReportResult.fromMap(result);
}
