// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getResolverFirewallRuleGroupAssociation.
class GetResolverFirewallRuleGroupAssociationArgs {
  /// The identifier for the association.
  final pulumi.Input<String> firewallRuleGroupAssociationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetResolverFirewallRuleGroupAssociationArgs({
    required this.firewallRuleGroupAssociationId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallRuleGroupAssociationId'] = firewallRuleGroupAssociationId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetResolverFirewallRuleGroupAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return GetResolverFirewallRuleGroupAssociationArgs(
      firewallRuleGroupAssociationId:
          pulumi.Input.asInput<String>(map['firewallRuleGroupAssociationId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
