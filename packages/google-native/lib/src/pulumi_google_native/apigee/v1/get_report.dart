import 'package:pulumi/pulumi.dart';
import 'get_report_args.dart';
import 'get_report_result.dart';

/// Retrieve a custom report definition.
Future<GetReportResult> getReport(
  GetReportArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getReport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReportResult.fromMap(result);
}
