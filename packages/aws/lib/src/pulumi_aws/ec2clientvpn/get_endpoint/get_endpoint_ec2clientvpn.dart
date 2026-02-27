import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_ec2clientvpn_args.dart';
import 'get_endpoint_ec2clientvpn_result.dart';

/// Get information on an EC2 Client VPN endpoint.
///
/// ## Example Usage
///
/// ### By Filter
///
///
///
/// ### By Identifier
Future<GetEndpointEc2clientvpnResult> getEndpointEc2clientvpn(
  GetEndpointEc2clientvpnArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2clientvpn/getEndpoint:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointEc2clientvpnResult.fromMap(result);
}
