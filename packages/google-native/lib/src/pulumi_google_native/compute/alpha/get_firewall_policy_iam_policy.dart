import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_iam_policy_args.dart';
import 'get_firewall_policy_iam_policy_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetFirewallPolicyIamPolicyResult> getFirewallPolicyIamPolicy(
  GetFirewallPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getFirewallPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyIamPolicyResult.fromMap(result);
}
