import 'package:pulumi/pulumi.dart';
import 'get_connection_args3.dart';
import 'get_connection_result3.dart';

/// This data source can be used to fetch information about a specific Glue Connection.
Future<GetConnectionResult3> getConnection3(
  GetConnectionArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:glue/getConnection:getConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult3.fromMap(result);
}
