import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_network_firewall_policy_iam_policy_args3.dart';
import 'get_region_network_firewall_policy_iam_policy_result3.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetRegionNetworkFirewallPolicyIamPolicyResult3>
    getRegionNetworkFirewallPolicyIamPolicy3(
  GetRegionNetworkFirewallPolicyIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionNetworkFirewallPolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkFirewallPolicyIamPolicyResult3.fromMap(result);
}
