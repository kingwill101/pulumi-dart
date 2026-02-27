import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_args.dart';
import 'get_firewall_result.dart';

/// Retrieve information about a firewall.
///
/// ## Example Usage
///
/// ### Find firewall policy by ARN
///
///
///
/// ### Find firewall policy by Name
///
///
///
/// ### Find firewall policy by ARN and Name
Future<GetFirewallResult> getFirewall(
  GetFirewallArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkfirewall/getFirewall:getFirewall',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallResult.fromMap(result);
}
