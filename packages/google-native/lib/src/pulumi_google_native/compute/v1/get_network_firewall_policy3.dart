import 'package:pulumi/pulumi.dart';
import 'get_network_firewall_policy_args3.dart';
import 'get_network_firewall_policy_result3.dart';

/// Returns the specified network firewall policy.
Future<GetNetworkFirewallPolicyResult3> getNetworkFirewallPolicy3(
  GetNetworkFirewallPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetworkFirewallPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallPolicyResult3.fromMap(result);
}
