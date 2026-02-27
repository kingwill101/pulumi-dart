import 'package:pulumi/pulumi.dart';
import 'get_table_args2.dart';
import 'get_table_result2.dart';

/// Data source for managing an AWS Timestream Write Table.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetTableResult2> getTable2(
  GetTableArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:timestreamwrite/getTable:getTable',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTableResult2.fromMap(result);
}
