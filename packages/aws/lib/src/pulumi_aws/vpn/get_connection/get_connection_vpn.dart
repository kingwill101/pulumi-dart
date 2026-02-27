import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_vpn_args.dart';
import 'get_connection_vpn_result.dart';

/// Fetches details of a Site-to-Site VPN connection. A Site-to-Site VPN connection is an Internet Protocol security (IPsec) VPN connection between a VPC and an on-premises network.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Find by VPN Connection ID
Future<GetConnectionVpnResult> getConnectionVpn(
  GetConnectionVpnArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpn/getConnection:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionVpnResult.fromMap(result);
}
