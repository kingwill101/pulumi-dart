import 'package:pulumi/pulumi.dart';
import 'get_table_args3.dart';
import 'get_table_result3.dart';

/// Gets metadata information about the specified table.
Future<GetTableResult3> getTable3(
  GetTableArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getTable',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTableResult3.fromMap(result);
}
