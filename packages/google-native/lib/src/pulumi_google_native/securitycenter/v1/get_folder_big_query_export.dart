import 'package:pulumi/pulumi.dart';
import 'get_folder_big_query_export_args.dart';
import 'get_folder_big_query_export_result.dart';

/// Gets a BigQuery export.
Future<GetFolderBigQueryExportResult> getFolderBigQueryExport(
  GetFolderBigQueryExportArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getFolderBigQueryExport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderBigQueryExportResult.fromMap(result);
}
