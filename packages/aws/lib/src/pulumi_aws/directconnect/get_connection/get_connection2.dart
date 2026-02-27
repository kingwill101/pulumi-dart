import 'package:pulumi/pulumi.dart';
import 'get_connection_args2.dart';
import 'get_connection_result2.dart';

/// Retrieve information about a Direct Connect Connection.
Future<GetConnectionResult2> getConnection2(
  GetConnectionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:directconnect/getConnection:getConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult2.fromMap(result);
}
