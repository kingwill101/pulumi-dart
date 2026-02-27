import 'package:pulumi/pulumi.dart';
import 'get_vpc_peering_connection_args.dart';
import 'get_vpc_peering_connection_result.dart';

/// The VPC Peering Connection data source provides details about
/// a specific VPC peering connection.
Future<GetVpcPeeringConnectionResult> getVpcPeeringConnection(
  GetVpcPeeringConnectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcPeeringConnection:getVpcPeeringConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcPeeringConnectionResult.fromMap(result);
}
