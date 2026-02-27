import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_report_config_migrationcenter_v1alpha1_args.dart';
import 'get_report_config_migrationcenter_v1alpha1_result.dart';

/// Gets details of a single ReportConfig.
Future<GetReportConfigMigrationcenterV1alpha1Result>
    getReportConfigMigrationcenterV1alpha1(
  GetReportConfigMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getReportConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportConfigMigrationcenterV1alpha1Result.fromMap(result);
}
