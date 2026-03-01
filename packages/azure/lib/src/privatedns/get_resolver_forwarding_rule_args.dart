// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_get_resolver_forwarding_rule_get_resolver_forwarding_rule_args_doc}
/// Arguments for getResolverForwardingRule.
/// {@endtemplate}
/// {@macro pulumi_privatedns_get_resolver_forwarding_rule_get_resolver_forwarding_rule_args_doc}
class GetResolverForwardingRuleArgs {
  /// ID of the Private DNS Resolver Forwarding Ruleset.
  final pulumi.Input<String> dnsForwardingRulesetId;
  /// Name of the Private DNS Resolver Forwarding Rule.
  final pulumi.Input<String> name;

  /// Creates a new [GetResolverForwardingRuleArgs].
  /// [dnsForwardingRulesetId] ID of the Private DNS Resolver Forwarding Ruleset.
  /// [name] Name of the Private DNS Resolver Forwarding Rule.
  GetResolverForwardingRuleArgs({
    required String dnsForwardingRulesetId,
    required String name,
  }) :
      dnsForwardingRulesetId = pulumi.Input.asInput<String>(dnsForwardingRulesetId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsForwardingRulesetId': dnsForwardingRulesetId,
      'name': name,
    };
  }

  factory GetResolverForwardingRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverForwardingRuleArgs(
      dnsForwardingRulesetId: map['dnsForwardingRulesetId'] as String,
      name: map['name'] as String,
    );
  }
}

