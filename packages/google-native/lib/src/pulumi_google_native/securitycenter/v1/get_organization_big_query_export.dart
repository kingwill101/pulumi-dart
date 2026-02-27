import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_big_query_export_args.dart';
import 'get_organization_big_query_export_result.dart';

/// Gets a BigQuery export.
Future<GetOrganizationBigQueryExportResult> getOrganizationBigQueryExport(
  GetOrganizationBigQueryExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationBigQueryExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationBigQueryExportResult.fromMap(result);
}
