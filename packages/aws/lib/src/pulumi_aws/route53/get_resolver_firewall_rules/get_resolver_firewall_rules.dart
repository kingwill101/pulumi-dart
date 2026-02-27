import 'package:pulumi/pulumi.dart';
import 'get_resolver_firewall_rules_args.dart';
import 'get_resolver_firewall_rules_result.dart';

/// `aws.route53.getResolverFirewallRules` Provides details about rules in a specific Route53 Resolver Firewall rule group.
///
/// ## Example Usage
///
/// The following example shows how to get Route53 Resolver Firewall rules based on its associated firewall group id.
Future<GetResolverFirewallRulesResult> getResolverFirewallRules(
  GetResolverFirewallRulesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverFirewallRules:getResolverFirewallRules',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResolverFirewallRulesResult.fromMap(result);
}
