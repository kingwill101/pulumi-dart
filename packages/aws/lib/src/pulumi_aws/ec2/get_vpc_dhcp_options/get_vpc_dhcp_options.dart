import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_dhcp_options_args.dart';
import 'get_vpc_dhcp_options_result.dart';

/// Retrieve information about an EC2 DHCP Options configuration.
///
/// ## Example Usage
///
/// ### Lookup by DHCP Options ID
///
///
///
/// ### Lookup by Filter
Future<GetVpcDhcpOptionsResult> getVpcDhcpOptions(
  GetVpcDhcpOptionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcDhcpOptions:getVpcDhcpOptions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcDhcpOptionsResult.fromMap(result);
}
