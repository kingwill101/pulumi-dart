import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_peering_connections_args.dart';
import 'get_vpc_peering_connections_result.dart';

/// Use this data source to get IDs of Amazon VPC peering connections
/// To get more details on each connection, use the data resource aws.ec2.VpcPeeringConnection
///
/// Note: To use this data source in a count, the resources should exist before trying to access
/// the data source.
Future<GetVpcPeeringConnectionsResult> getVpcPeeringConnections(
  GetVpcPeeringConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcPeeringConnections:getVpcPeeringConnections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcPeeringConnectionsResult.fromMap(result);
}
