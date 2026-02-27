import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_report_migrationcenter_v1alpha1_args.dart';
import 'get_report_migrationcenter_v1alpha1_result.dart';

/// Gets details of a single Report.
Future<GetReportMigrationcenterV1alpha1Result> getReportMigrationcenterV1alpha1(
  GetReportMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportMigrationcenterV1alpha1Result.fromMap(result);
}
