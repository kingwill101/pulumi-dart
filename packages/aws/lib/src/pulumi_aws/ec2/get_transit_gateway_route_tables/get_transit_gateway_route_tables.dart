import 'package:pulumi/pulumi.dart';
import 'get_transit_gateway_route_tables_args.dart';
import 'get_transit_gateway_route_tables_result.dart';

/// Provides information for multiple EC2 Transit Gateway Route Tables, such as their identifiers.
///
/// ## Example Usage
///
/// The following shows outputting all Transit Gateway Route Table Ids.
Future<GetTransitGatewayRouteTablesResult> getTransitGatewayRouteTables(
  GetTransitGatewayRouteTablesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getTransitGatewayRouteTables:getTransitGatewayRouteTables',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTransitGatewayRouteTablesResult.fromMap(result);
}
