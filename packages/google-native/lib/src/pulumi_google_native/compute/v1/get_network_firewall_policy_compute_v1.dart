import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_firewall_policy_compute_v1_args.dart';
import 'get_network_firewall_policy_compute_v1_result.dart';

/// Returns the specified network firewall policy.
Future<GetNetworkFirewallPolicyComputeV1Result>
    getNetworkFirewallPolicyComputeV1(
  GetNetworkFirewallPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetworkFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallPolicyComputeV1Result.fromMap(result);
}
