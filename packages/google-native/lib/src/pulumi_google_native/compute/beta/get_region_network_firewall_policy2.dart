import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_network_firewall_policy_args2.dart';
import 'get_region_network_firewall_policy_result2.dart';

/// Returns the specified network firewall policy.
Future<GetRegionNetworkFirewallPolicyResult2> getRegionNetworkFirewallPolicy2(
  GetRegionNetworkFirewallPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionNetworkFirewallPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkFirewallPolicyResult2.fromMap(result);
}
