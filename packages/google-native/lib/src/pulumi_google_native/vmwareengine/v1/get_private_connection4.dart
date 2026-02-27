import 'package:pulumi/pulumi.dart' hide Config;
import 'get_private_connection_args4.dart';
import 'get_private_connection_result4.dart';

/// Retrieves a `PrivateConnection` resource by its resource name. The resource contains details of the private connection, such as connected network, routing mode and state.
Future<GetPrivateConnectionResult4> getPrivateConnection4(
  GetPrivateConnectionArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getPrivateConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPrivateConnectionResult4.fromMap(result);
}
