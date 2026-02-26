import 'package:pulumi/pulumi.dart';
import 'get_report_args2.dart';
import 'get_report_result2.dart';

/// Gets details of a single Report.
Future<GetReportResult2> getReport2(
  GetReportArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getReport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReportResult2.fromMap(result);
}
