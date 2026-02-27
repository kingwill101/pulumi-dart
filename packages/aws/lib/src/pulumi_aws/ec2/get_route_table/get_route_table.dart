import 'package:pulumi/pulumi.dart';
import 'get_route_table_args.dart';
import 'get_route_table_result.dart';

/// `aws.ec2.RouteTable` provides details about a specific Route Table.
///
/// This resource can prove useful when a module accepts a Subnet ID as an input variable and needs to, for example, add a route in the Route Table.
///
/// ## Example Usage
///
/// The following example shows how one might accept a Route Table ID as a variable and use this data source to obtain the data necessary to create a route.
Future<GetRouteTableResult> getRouteTable(
  GetRouteTableArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getRouteTable:getRouteTable',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteTableResult.fromMap(result);
}
