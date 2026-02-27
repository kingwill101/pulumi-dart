import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connections_args.dart';
import 'get_connections_result.dart';

/// Provides details about existing Network Manager connections.
Future<GetConnectionsResult> getConnections(
  GetConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getConnections:getConnections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionsResult.fromMap(result);
}
