import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_args.dart';
import 'get_firewall_policy_result.dart';

/// Returns the specified firewall policy.
Future<GetFirewallPolicyResult> getFirewallPolicy(
  GetFirewallPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyResult.fromMap(result);
}
