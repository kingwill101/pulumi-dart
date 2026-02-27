import 'package:pulumi/pulumi.dart';
import 'get_nat_gateways_args.dart';
import 'get_nat_gateways_result.dart';

/// This resource can be useful for getting back a list of NAT gateway ids to be referenced elsewhere.
///
/// ## Example Usage
///
/// The following returns all NAT gateways in a specified VPC that are marked as available
Future<GetNatGatewaysResult> getNatGateways(
  GetNatGatewaysArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNatGateways:getNatGateways',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNatGatewaysResult.fromMap(result);
}
