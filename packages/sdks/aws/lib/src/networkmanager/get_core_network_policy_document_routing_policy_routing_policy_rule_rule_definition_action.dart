// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction {
  /// Type of action to perform. Valid values: `drop`, `allow`, `summarize`, `prepend-asn-list`, `remove-asn-list`, `replace-asn-list`, `add-community`, `remove-community`, `set-med`, `set-local-preference`.
  final pulumi.Input<String> type;
  /// Value for the action, required for certain action types.
  final pulumi.Input<String>? value;

  /// Creates a new [GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction].
  /// [type] Type of action to perform. Valid values: `drop`, `allow`, `summarize`, `prepend-asn-list`, `remove-asn-list`, `replace-asn-list`, `add-community`, `remove-community`, `set-med`, `set-local-preference`.
  /// [value] Value for the action, required for certain action types.
  const GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction({
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': ?value,
    };
  }

  factory GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

