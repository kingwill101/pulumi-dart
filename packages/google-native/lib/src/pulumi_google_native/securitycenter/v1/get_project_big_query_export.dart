import 'package:pulumi/pulumi.dart';
import 'get_project_big_query_export_args.dart';
import 'get_project_big_query_export_result.dart';

/// Gets a BigQuery export.
Future<GetProjectBigQueryExportResult> getProjectBigQueryExport(
  GetProjectBigQueryExportArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getProjectBigQueryExport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProjectBigQueryExportResult.fromMap(result);
}
