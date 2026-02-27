import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_network_firewall_policy_compute_beta_args.dart';
import 'get_region_network_firewall_policy_compute_beta_result.dart';

/// Returns the specified network firewall policy.
Future<GetRegionNetworkFirewallPolicyComputeBetaResult>
    getRegionNetworkFirewallPolicyComputeBeta(
  GetRegionNetworkFirewallPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionNetworkFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkFirewallPolicyComputeBetaResult.fromMap(result);
}
