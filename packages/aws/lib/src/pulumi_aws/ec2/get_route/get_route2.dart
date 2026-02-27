import 'package:pulumi/pulumi.dart';
import 'get_route_args2.dart';
import 'get_route_result2.dart';

/// `aws.ec2.Route` provides details about a specific Route.
///
/// This resource can prove useful when finding the resource associated with a CIDR. For example, finding the peering connection associated with a CIDR value.
///
/// ## Example Usage
///
/// The following example shows how one might use a CIDR value to find a network interface id and use this to create a data source of that network interface.
Future<GetRouteResult2> getRoute2(
  GetRouteArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getRoute:getRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteResult2.fromMap(result);
}
