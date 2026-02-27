import 'package:pulumi/pulumi.dart';
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
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNatGateway:getNatGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNatGatewayResult.fromMap(result);
}
