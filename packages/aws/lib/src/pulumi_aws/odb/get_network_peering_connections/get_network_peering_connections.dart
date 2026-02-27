import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_peering_connections_args.dart';
import 'get_network_peering_connections_result.dart';

/// Data source for retrieving all oracle database network peering resource in Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetNetworkPeeringConnectionsResult> getNetworkPeeringConnections(
  GetNetworkPeeringConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getNetworkPeeringConnections:getNetworkPeeringConnections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkPeeringConnectionsResult.fromMap(result);
}
