import 'package:pulumi/pulumi.dart';
import 'get_table_args2.dart';
import 'get_table_result2.dart';

/// Gets the specified table resource by table ID. This method does not return the data in the table, it only returns the table resource, which describes the structure of this table.
Future<GetTableResult2> getTable2(
  GetTableArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquery/v2:getTable',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTableResult2.fromMap(result);
}
