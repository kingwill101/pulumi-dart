import 'package:pulumi/pulumi.dart';
import 'get_utilization_report_args2.dart';
import 'get_utilization_report_result2.dart';

/// Gets a single Utilization Report.
Future<GetUtilizationReportResult2> getUtilizationReport2(
  GetUtilizationReportArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getUtilizationReport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUtilizationReportResult2.fromMap(result);
}
