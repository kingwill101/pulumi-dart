import 'package:pulumi/pulumi.dart' hide Config;
import 'get_report_config_args2.dart';
import 'get_report_config_result2.dart';

/// Gets details of a single ReportConfig.
Future<GetReportConfigResult2> getReportConfig2(
  GetReportConfigArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getReportConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReportConfigResult2.fromMap(result);
}
