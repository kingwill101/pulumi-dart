import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_bigquery_v2_args.dart';
import 'get_table_bigquery_v2_result.dart';

/// Gets the specified table resource by table ID. This method does not return the data in the table, it only returns the table resource, which describes the structure of this table.
Future<GetTableBigqueryV2Result> getTableBigqueryV2(
  GetTableBigqueryV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquery/v2:getTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableBigqueryV2Result.fromMap(result);
}
