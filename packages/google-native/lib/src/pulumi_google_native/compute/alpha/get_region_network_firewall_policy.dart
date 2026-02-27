import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_network_firewall_policy_args.dart';
import 'get_region_network_firewall_policy_result.dart';

/// Returns the specified network firewall policy.
Future<GetRegionNetworkFirewallPolicyResult> getRegionNetworkFirewallPolicy(
  GetRegionNetworkFirewallPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionNetworkFirewallPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkFirewallPolicyResult.fromMap(result);
}
