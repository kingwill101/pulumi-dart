import 'package:pulumi/pulumi.dart' hide Config;
import 'get_connection_args3.dart';
import 'get_connection_result3.dart';

/// Gets details of a single connection.
Future<GetConnectionResult3> getConnection3(
  GetConnectionArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v2:getConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult3.fromMap(result);
}
