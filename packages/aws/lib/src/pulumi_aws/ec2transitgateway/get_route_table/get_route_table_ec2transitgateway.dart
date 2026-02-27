import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_ec2transitgateway_args.dart';
import 'get_route_table_ec2transitgateway_result.dart';

/// Get information on an EC2 Transit Gateway Route Table.
///
/// ## Example Usage
///
/// ### By Filter
///
///
///
/// ### By Identifier
Future<GetRouteTableEc2transitgatewayResult> getRouteTableEc2transitgateway(
  GetRouteTableEc2transitgatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getRouteTable:getRouteTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteTableEc2transitgatewayResult.fromMap(result);
}
