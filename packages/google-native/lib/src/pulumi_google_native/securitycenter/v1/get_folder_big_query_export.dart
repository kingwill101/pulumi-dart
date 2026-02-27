import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_big_query_export_args.dart';
import 'get_folder_big_query_export_result.dart';

/// Gets a BigQuery export.
Future<GetFolderBigQueryExportResult> getFolderBigQueryExport(
  GetFolderBigQueryExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getFolderBigQueryExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderBigQueryExportResult.fromMap(result);
}
