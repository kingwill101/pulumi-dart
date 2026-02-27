import 'package:pulumi/pulumi.dart' hide Config;
import 'get_firewall_policy_args3.dart';
import 'get_firewall_policy_result3.dart';

/// Returns the specified firewall policy.
Future<GetFirewallPolicyResult3> getFirewallPolicy3(
  GetFirewallPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getFirewallPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyResult3.fromMap(result);
}
