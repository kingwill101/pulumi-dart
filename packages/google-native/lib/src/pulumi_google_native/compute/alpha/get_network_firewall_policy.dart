import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_firewall_policy_args.dart';
import 'get_network_firewall_policy_result.dart';

/// Returns the specified network firewall policy.
Future<GetNetworkFirewallPolicyResult> getNetworkFirewallPolicy(
  GetNetworkFirewallPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNetworkFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallPolicyResult.fromMap(result);
}
