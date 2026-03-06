// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition {
  /// Must be `routing-policy-label`.
  final pulumi.Input<String> type;
  /// Routing policy label to match.
  final pulumi.Input<String> value;

  /// Creates a new [GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition].
  /// [type] Must be `routing-policy-label`.
  /// [value] Routing policy label to match.
  const GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

