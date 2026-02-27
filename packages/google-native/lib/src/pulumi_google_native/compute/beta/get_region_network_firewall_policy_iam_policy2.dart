import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_network_firewall_policy_iam_policy_args2.dart';
import 'get_region_network_firewall_policy_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetRegionNetworkFirewallPolicyIamPolicyResult2>
    getRegionNetworkFirewallPolicyIamPolicy2(
  GetRegionNetworkFirewallPolicyIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionNetworkFirewallPolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkFirewallPolicyIamPolicyResult2.fromMap(result);
}
