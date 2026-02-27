import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_report_migrationcenter_v1_args.dart';
import 'get_report_migrationcenter_v1_result.dart';

/// Gets details of a single Report.
Future<GetReportMigrationcenterV1Result> getReportMigrationcenterV1(
  GetReportMigrationcenterV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportMigrationcenterV1Result.fromMap(result);
}
