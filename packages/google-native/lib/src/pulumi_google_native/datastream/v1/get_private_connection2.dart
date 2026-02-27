import 'package:pulumi/pulumi.dart' hide Config;
import 'get_private_connection_args2.dart';
import 'get_private_connection_result2.dart';

/// Use this method to get details about a private connectivity configuration.
Future<GetPrivateConnectionResult2> getPrivateConnection2(
  GetPrivateConnectionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1:getPrivateConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPrivateConnectionResult2.fromMap(result);
}
