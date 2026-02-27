import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_firewall_rule_group_args.dart';
import 'get_resolver_firewall_rule_group_result.dart';

/// `aws.route53.ResolverFirewallRuleGroup` Retrieves the specified firewall rule group.
///
/// This data source allows to retrieve details about a specific a Route 53 Resolver DNS Firewall rule group.
///
/// ## Example Usage
///
/// The following example shows how to get a firewall rule group from its ID.
Future<GetResolverFirewallRuleGroupResult> getResolverFirewallRuleGroup(
  GetResolverFirewallRuleGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverFirewallRuleGroup:getResolverFirewallRuleGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverFirewallRuleGroupResult.fromMap(result);
}
