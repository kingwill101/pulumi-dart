import 'package:pulumi/pulumi.dart';
import 'get_route_tables_args.dart';
import 'get_route_tables_result.dart';

/// This resource can be useful for getting back a list of route table ids to be referenced elsewhere.
///
/// ## Example Usage
///
/// The following adds a route for a particular cidr block to every (private
/// kops) route table in a specified vpc to use a particular vpc peering
/// connection.
Future<GetRouteTablesResult> getRouteTables(
  GetRouteTablesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getRouteTables:getRouteTables',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteTablesResult.fromMap(result);
}
