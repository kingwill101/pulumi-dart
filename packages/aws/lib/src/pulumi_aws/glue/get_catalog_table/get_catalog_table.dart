import 'package:pulumi/pulumi.dart';
import 'get_catalog_table_args.dart';
import 'get_catalog_table_result.dart';

/// This data source can be used to fetch information about an AWS Glue Data Catalog Table.
Future<GetCatalogTableResult> getCatalogTable(
  GetCatalogTableArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:glue/getCatalogTable:getCatalogTable',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCatalogTableResult.fromMap(result);
}
