import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_network_firewall_policy_compute_v1_args.dart';
import 'get_region_network_firewall_policy_compute_v1_result.dart';

/// Returns the specified network firewall policy.
Future<GetRegionNetworkFirewallPolicyComputeV1Result>
    getRegionNetworkFirewallPolicyComputeV1(
  GetRegionNetworkFirewallPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionNetworkFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkFirewallPolicyComputeV1Result.fromMap(result);
}
