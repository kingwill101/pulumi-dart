import 'package:pulumi/pulumi.dart';
import 'get_region_network_firewall_policy_args3.dart';
import 'get_region_network_firewall_policy_result3.dart';

/// Returns the specified network firewall policy.
Future<GetRegionNetworkFirewallPolicyResult3> getRegionNetworkFirewallPolicy3(
  GetRegionNetworkFirewallPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionNetworkFirewallPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkFirewallPolicyResult3.fromMap(result);
}
