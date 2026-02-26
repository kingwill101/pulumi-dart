import 'package:pulumi/pulumi.dart';
import 'get_connection_args4.dart';
import 'get_connection_result4.dart';

/// Gets details of a single Connection.
Future<GetConnectionResult4> getConnection4(
  GetConnectionArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult4.fromMap(result);
}
