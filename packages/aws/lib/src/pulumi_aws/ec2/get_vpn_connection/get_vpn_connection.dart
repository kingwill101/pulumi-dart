import 'package:pulumi/pulumi.dart';
import 'get_vpn_connection_args.dart';
import 'get_vpn_connection_result.dart';

/// Fetches details of a Site-to-Site VPN connection. A Site-to-Site VPN connection is an Internet Protocol security (IPsec) VPN connection between a VPC and an on-premises network.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Find by VPN Connection ID
Future<GetVpnConnectionResult> getVpnConnection(
  GetVpnConnectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpnConnection:getVpnConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpnConnectionResult.fromMap(result);
}
