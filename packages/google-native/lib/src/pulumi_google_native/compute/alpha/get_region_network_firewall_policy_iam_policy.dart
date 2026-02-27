import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_network_firewall_policy_iam_policy_args.dart';
import 'get_region_network_firewall_policy_iam_policy_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetRegionNetworkFirewallPolicyIamPolicyResult>
    getRegionNetworkFirewallPolicyIamPolicy(
  GetRegionNetworkFirewallPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionNetworkFirewallPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkFirewallPolicyIamPolicyResult.fromMap(result);
}
