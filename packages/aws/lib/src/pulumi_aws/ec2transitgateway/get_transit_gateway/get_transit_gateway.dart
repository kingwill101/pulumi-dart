import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_gateway_args.dart';
import 'get_transit_gateway_result.dart';

/// Get information on an EC2 Transit Gateway.
///
/// ## Example Usage
///
/// ### By Filter
///
///
///
/// ### By Identifier
Future<GetTransitGatewayResult> getTransitGateway(
  GetTransitGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getTransitGateway:getTransitGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitGatewayResult.fromMap(result);
}
