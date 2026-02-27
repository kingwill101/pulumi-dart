import 'package:pulumi/pulumi.dart' hide Config;
import 'get_report_config_args.dart';
import 'get_report_config_result.dart';

/// Gets details of a single ReportConfig.
Future<GetReportConfigResult> getReportConfig(
  GetReportConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getReportConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReportConfigResult.fromMap(result);
}
