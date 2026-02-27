import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_ec2_args.dart';
import 'get_route_ec2_result.dart';

/// `aws.ec2.Route` provides details about a specific Route.
///
/// This resource can prove useful when finding the resource associated with a CIDR. For example, finding the peering connection associated with a CIDR value.
///
/// ## Example Usage
///
/// The following example shows how one might use a CIDR value to find a network interface id and use this to create a data source of that network interface.
Future<GetRouteEc2Result> getRouteEc2(
  GetRouteEc2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getRoute:getRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteEc2Result.fromMap(result);
}
