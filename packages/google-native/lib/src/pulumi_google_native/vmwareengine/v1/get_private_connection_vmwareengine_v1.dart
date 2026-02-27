import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_connection_vmwareengine_v1_args.dart';
import 'get_private_connection_vmwareengine_v1_result.dart';

/// Retrieves a `PrivateConnection` resource by its resource name. The resource contains details of the private connection, such as connected network, routing mode and state.
Future<GetPrivateConnectionVmwareengineV1Result>
    getPrivateConnectionVmwareengineV1(
  GetPrivateConnectionVmwareengineV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getPrivateConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateConnectionVmwareengineV1Result.fromMap(result);
}
