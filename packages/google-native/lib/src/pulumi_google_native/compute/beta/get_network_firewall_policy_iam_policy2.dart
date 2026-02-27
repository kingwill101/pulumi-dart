import 'package:pulumi/pulumi.dart' hide Config;
import 'get_network_firewall_policy_iam_policy_args2.dart';
import 'get_network_firewall_policy_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetNetworkFirewallPolicyIamPolicyResult2>
    getNetworkFirewallPolicyIamPolicy2(
  GetNetworkFirewallPolicyIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkFirewallPolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallPolicyIamPolicyResult2.fromMap(result);
}
