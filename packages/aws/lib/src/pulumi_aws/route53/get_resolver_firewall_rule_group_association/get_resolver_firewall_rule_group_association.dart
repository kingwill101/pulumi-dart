import 'package:pulumi/pulumi.dart';
import 'get_resolver_firewall_rule_group_association_args.dart';
import 'get_resolver_firewall_rule_group_association_result.dart';

/// `aws.route53.ResolverFirewallRuleGroupAssociation` Retrieves the specified firewall rule group association.
///
/// This data source allows to retrieve details about a specific a Route 53 Resolver DNS Firewall rule group association.
///
/// ## Example Usage
///
/// The following example shows how to get a firewall rule group association from its id.
Future<GetResolverFirewallRuleGroupAssociationResult>
    getResolverFirewallRuleGroupAssociation(
  GetResolverFirewallRuleGroupAssociationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverFirewallRuleGroupAssociation:getResolverFirewallRuleGroupAssociation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResolverFirewallRuleGroupAssociationResult.fromMap(result);
}
