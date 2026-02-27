import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_firewall_rules_args.dart';
import 'get_resolver_firewall_rules_result.dart';

/// `aws.route53.getResolverFirewallRules` Provides details about rules in a specific Route53 Resolver Firewall rule group.
///
/// ## Example Usage
///
/// The following example shows how to get Route53 Resolver Firewall rules based on its associated firewall group id.
Future<GetResolverFirewallRulesResult> getResolverFirewallRules(
  GetResolverFirewallRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverFirewallRules:getResolverFirewallRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverFirewallRulesResult.fromMap(result);
}
