import 'package:pulumi/pulumi.dart';
import 'get_connections_args.dart';
import 'get_connections_result.dart';

/// Provides details about existing Network Manager connections.
Future<GetConnectionsResult> getConnections(
  GetConnectionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getConnections:getConnections',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionsResult.fromMap(result);
}
