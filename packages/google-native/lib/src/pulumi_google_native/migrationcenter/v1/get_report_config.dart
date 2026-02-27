import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_report_config_args.dart';
import 'get_report_config_result.dart';

/// Gets details of a single ReportConfig.
Future<GetReportConfigResult> getReportConfig(
  GetReportConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getReportConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportConfigResult.fromMap(result);
}
