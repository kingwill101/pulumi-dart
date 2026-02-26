import 'package:pulumi/pulumi.dart';
import 'get_firewall_policy_args2.dart';
import 'get_firewall_policy_result2.dart';

/// Returns the specified firewall policy.
Future<GetFirewallPolicyResult2> getFirewallPolicy2(
  GetFirewallPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getFirewallPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyResult2.fromMap(result);
}
