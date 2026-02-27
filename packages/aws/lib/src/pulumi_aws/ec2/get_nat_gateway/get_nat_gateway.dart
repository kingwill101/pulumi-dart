import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nat_gateway_args.dart';
import 'get_nat_gateway_result.dart';

/// Provides details about a specific VPC NAT Gateway.
///
/// ## Example Usage
///
///
///
/// ### With tags
Future<GetNatGatewayResult> getNatGateway(
  GetNatGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNatGateway:getNatGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNatGatewayResult.fromMap(result);
}
