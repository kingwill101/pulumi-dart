import 'package:pulumi/pulumi.dart';
import 'get_organization_big_query_export_args.dart';
import 'get_organization_big_query_export_result.dart';

/// Gets a BigQuery export.
Future<GetOrganizationBigQueryExportResult> getOrganizationBigQueryExport(
  GetOrganizationBigQueryExportArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationBigQueryExport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationBigQueryExportResult.fromMap(result);
}
