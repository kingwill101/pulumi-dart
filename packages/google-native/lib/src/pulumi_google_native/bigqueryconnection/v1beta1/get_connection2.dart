import 'package:pulumi/pulumi.dart' hide Config;
import 'get_connection_args2.dart';
import 'get_connection_result2.dart';

/// Returns specified connection.
Future<GetConnectionResult2> getConnection2(
  GetConnectionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryconnection/v1beta1:getConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult2.fromMap(result);
}
