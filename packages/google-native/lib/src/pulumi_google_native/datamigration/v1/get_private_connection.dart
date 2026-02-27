import 'package:pulumi/pulumi.dart' hide Config;
import 'get_private_connection_args.dart';
import 'get_private_connection_result.dart';

/// Gets details of a single private connection.
Future<GetPrivateConnectionResult> getPrivateConnection(
  GetPrivateConnectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getPrivateConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPrivateConnectionResult.fromMap(result);
}
