import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_timestreamwrite_args.dart';
import 'get_table_timestreamwrite_result.dart';

/// Data source for managing an AWS Timestream Write Table.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetTableTimestreamwriteResult> getTableTimestreamwrite(
  GetTableTimestreamwriteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:timestreamwrite/getTable:getTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableTimestreamwriteResult.fromMap(result);
}
