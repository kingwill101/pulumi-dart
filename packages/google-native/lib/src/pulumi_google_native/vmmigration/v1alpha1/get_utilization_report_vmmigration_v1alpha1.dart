import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_utilization_report_vmmigration_v1alpha1_args.dart';
import 'get_utilization_report_vmmigration_v1alpha1_result.dart';

/// Gets a single Utilization Report.
Future<GetUtilizationReportVmmigrationV1alpha1Result>
    getUtilizationReportVmmigrationV1alpha1(
  GetUtilizationReportVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getUtilizationReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUtilizationReportVmmigrationV1alpha1Result.fromMap(result);
}
