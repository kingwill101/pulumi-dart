// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_get_resolver_firewall_rule_group_association_get_resolver_firewall_rule_group_association_args_doc}
/// Arguments for getResolverFirewallRuleGroupAssociation.
/// {@endtemplate}
/// {@macro pulumi_route53_get_resolver_firewall_rule_group_association_get_resolver_firewall_rule_group_association_args_doc}
class GetResolverFirewallRuleGroupAssociationArgs {
  /// The identifier for the association.
  final pulumi.Input<String> firewallRuleGroupAssociationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetResolverFirewallRuleGroupAssociationArgs].
  /// [firewallRuleGroupAssociationId] The identifier for the association.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetResolverFirewallRuleGroupAssociationArgs({
    required String firewallRuleGroupAssociationId,
    String? region,
  }) : firewallRuleGroupAssociationId = pulumi.Input.asInput<String>(
         firewallRuleGroupAssociationId,
       ),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallRuleGroupAssociationId': firewallRuleGroupAssociationId,
      'region': ?region,
    };
  }

  factory GetResolverFirewallRuleGroupAssociationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResolverFirewallRuleGroupAssociationArgs(
      firewallRuleGroupAssociationId:
          map['firewallRuleGroupAssociationId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
