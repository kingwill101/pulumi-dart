import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_peering_connection_args.dart';
import 'get_network_peering_connection_result.dart';

/// Data source for managing oracle database network peering resource in AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetNetworkPeeringConnectionResult> getNetworkPeeringConnection(
  GetNetworkPeeringConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getNetworkPeeringConnection:getNetworkPeeringConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkPeeringConnectionResult.fromMap(result);
}
