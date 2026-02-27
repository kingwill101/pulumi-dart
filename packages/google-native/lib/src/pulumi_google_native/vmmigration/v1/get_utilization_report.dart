import 'package:pulumi/pulumi.dart' hide Config;
import 'get_utilization_report_args.dart';
import 'get_utilization_report_result.dart';

/// Gets a single Utilization Report.
Future<GetUtilizationReportResult> getUtilizationReport(
  GetUtilizationReportArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getUtilizationReport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUtilizationReportResult.fromMap(result);
}
