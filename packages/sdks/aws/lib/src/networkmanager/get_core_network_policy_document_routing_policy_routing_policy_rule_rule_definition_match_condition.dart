// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition {
  /// Type of condition to match. Valid values: `prefix-equals`, `prefix-in-cidr`, `prefix-in-prefix-list`, `asn-in-as-path`, `community-in-list`, `med-equals`.
  final pulumi.Input<String> type;
  /// Value to match against, depending on the condition type.
  final pulumi.Input<String> value;

  /// Creates a new [GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition].
  /// [type] Type of condition to match. Valid values: `prefix-equals`, `prefix-in-cidr`, `prefix-in-prefix-list`, `asn-in-as-path`, `community-in-list`, `med-equals`.
  /// [value] Value to match against, depending on the condition type.
  GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

