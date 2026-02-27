import 'package:pulumi/pulumi.dart';
import 'get_local_gateway_route_tables_args.dart';
import 'get_local_gateway_route_tables_result.dart';

/// Provides information for multiple EC2 Local Gateway Route Tables, such as their identifiers.
///
/// ## Example Usage
///
/// The following shows outputting all Local Gateway Route Table Ids.
Future<GetLocalGatewayRouteTablesResult> getLocalGatewayRouteTables(
  GetLocalGatewayRouteTablesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGatewayRouteTables:getLocalGatewayRouteTables',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewayRouteTablesResult.fromMap(result);
}
