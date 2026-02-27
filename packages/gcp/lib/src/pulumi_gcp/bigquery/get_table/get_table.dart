import 'package:pulumi/pulumi.dart';
import 'get_table_args.dart';
import 'get_table_result.dart';

/// Get a specific table in a BigQuery dataset. For more information see
/// the [official documentation](https://cloud.google.com/bigquery/docs)
/// and [API](https://cloud.google.com/bigquery/docs/reference/rest/v2/tables/get).
Future<GetTableResult> getTable(
  GetTableArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getTable:getTable',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTableResult.fromMap(result);
}
