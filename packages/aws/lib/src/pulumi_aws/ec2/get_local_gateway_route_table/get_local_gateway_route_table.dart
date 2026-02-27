import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_route_table_args.dart';
import 'get_local_gateway_route_table_result.dart';

/// Provides details about an EC2 Local Gateway Route Table.
///
/// This data source can prove useful when a module accepts a local gateway route table id as
/// an input variable and needs to, for example, find the associated Outpost or Local Gateway.
///
/// ## Example Usage
///
/// The following example returns a specific local gateway route table ID
Future<GetLocalGatewayRouteTableResult> getLocalGatewayRouteTable(
  GetLocalGatewayRouteTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGatewayRouteTable:getLocalGatewayRouteTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewayRouteTableResult.fromMap(result);
}
