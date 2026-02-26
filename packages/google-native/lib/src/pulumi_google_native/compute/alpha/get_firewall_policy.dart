import 'package:pulumi/pulumi.dart';
import 'get_firewall_policy_args.dart';
import 'get_firewall_policy_result.dart';

/// Returns the specified firewall policy.
Future<GetFirewallPolicyResult> getFirewallPolicy(
  GetFirewallPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getFirewallPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyResult.fromMap(result);
}
