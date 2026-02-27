import 'package:pulumi/pulumi.dart' hide Config;
import 'get_report_args3.dart';
import 'get_report_result3.dart';

/// Gets details of a single Report.
Future<GetReportResult3> getReport3(
  GetReportArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getReport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReportResult3.fromMap(result);
}
