import 'package:pulumi/pulumi.dart';
import 'get_network_firewall_policy_args.dart';
import 'get_network_firewall_policy_result.dart';

/// Returns the specified network firewall policy.
Future<GetNetworkFirewallPolicyResult> getNetworkFirewallPolicy(
  GetNetworkFirewallPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNetworkFirewallPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallPolicyResult.fromMap(result);
}
