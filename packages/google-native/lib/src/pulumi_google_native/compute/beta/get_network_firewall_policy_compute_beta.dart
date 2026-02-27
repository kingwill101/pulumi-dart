import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_firewall_policy_compute_beta_args.dart';
import 'get_network_firewall_policy_compute_beta_result.dart';

/// Returns the specified network firewall policy.
Future<GetNetworkFirewallPolicyComputeBetaResult>
    getNetworkFirewallPolicyComputeBeta(
  GetNetworkFirewallPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallPolicyComputeBetaResult.fromMap(result);
}
