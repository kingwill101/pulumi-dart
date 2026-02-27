import 'package:pulumi/pulumi.dart' hide Config;
import 'get_private_connection_args3.dart';
import 'get_private_connection_result3.dart';

/// Use this method to get details about a private connectivity configuration.
Future<GetPrivateConnectionResult3> getPrivateConnection3(
  GetPrivateConnectionArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1alpha1:getPrivateConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPrivateConnectionResult3.fromMap(result);
}
