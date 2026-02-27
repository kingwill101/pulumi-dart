import 'package:pulumi/pulumi.dart';
import 'get_firewall_policy_args.dart';
import 'get_firewall_policy_result.dart';

/// Retrieve information about a firewall policy.
///
/// ## Example Usage
///
/// ### Find firewall policy by name
///
///
///
/// ### Find firewall policy by ARN
///
///
///
/// ### Find firewall policy by name and ARN
///
///
///
/// AWS Network Firewall does not allow multiple firewall policies with the same name to be created in an account. It is possible, however, to have multiple firewall policies available in a single account with identical `name` values but distinct `arn` values, e.g. firewall policies shared via a [Resource Access Manager (RAM) share][1]. In that case specifying `arn`, or `name` and `arn`, is recommended.
///
/// > **Note:** If there are multiple firewall policies in an account with the same `name`, and `arn` is not specified, the default behavior will return the firewall policy with `name` that was created in the account.
Future<GetFirewallPolicyResult> getFirewallPolicy(
  GetFirewallPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkfirewall/getFirewallPolicy:getFirewallPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyResult.fromMap(result);
}
