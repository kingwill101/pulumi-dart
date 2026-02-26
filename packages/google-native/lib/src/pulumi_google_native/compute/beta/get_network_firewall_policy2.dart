import 'package:pulumi/pulumi.dart';
import 'get_network_firewall_policy_args2.dart';
import 'get_network_firewall_policy_result2.dart';

/// Returns the specified network firewall policy.
Future<GetNetworkFirewallPolicyResult2> getNetworkFirewallPolicy2(
  GetNetworkFirewallPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkFirewallPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallPolicyResult2.fromMap(result);
}
