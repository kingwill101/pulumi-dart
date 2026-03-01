// ignore_for_file: unused_element, unnecessary_cast

import 'router_nat_rule_action_compute_beta.dart';

class RouterNatRuleComputeBeta {
  /// The action to be enforced for traffic that matches this rule.
  final RouterNatRuleActionComputeBeta? action;

  /// An optional description of this rule.
  final String? description;

  /// CEL expression that specifies the match condition that egress traffic from a VM is evaluated against. If it evaluates to true, the corresponding `action` is enforced. The following examples are valid match expressions for public NAT: "inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')" "destination.ip == '1.1.0.1' || destination.ip == '8.8.8.8'" The following example is a valid match expression for private NAT: "nexthop.hub == '//networkconnectivity.googleapis.com/projects/my-project/locations/global/hubs/hub-1'"
  final String? match;

  /// An integer uniquely identifying a rule in the list. The rule number must be a positive value between 0 and 65000, and must be unique among rules within a NAT.
  final int? ruleNumber;

  /// Creates a new [RouterNatRuleComputeBeta].
  /// [action] The action to be enforced for traffic that matches this rule.
  /// [description] An optional description of this rule.
  /// [match] CEL expression that specifies the match condition that egress traffic from a VM is evaluated against. If it evaluates to true, the corresponding `action` is enforced. The following examples are valid match expressions for public NAT: "inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')" "destination.ip == '1.1.0.1' || destination.ip == '8.8.8.8'" The following example is a valid match expression for private NAT: "nexthop.hub == '//networkconnectivity.googleapis.com/projects/my-project/locations/global/hubs/hub-1'"
  /// [ruleNumber] An integer uniquely identifying a rule in the list. The rule number must be a positive value between 0 and 65000, and must be unique among rules within a NAT.
  RouterNatRuleComputeBeta({
    this.action,
    this.description,
    this.match,
    this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'description': ?description,
      'match': ?match,
      'ruleNumber': ?ruleNumber,
    };
  }

  factory RouterNatRuleComputeBeta.fromMap(Map<String, dynamic> map) {
    return RouterNatRuleComputeBeta(
      action: map['action'] == null
          ? null
          : RouterNatRuleActionComputeBeta.fromMap(
              (map['action'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      match: map['match'] == null ? null : map['match'] as String,
      ruleNumber: map['ruleNumber'] == null ? null : map['ruleNumber'] as int,
    );
  }
}
