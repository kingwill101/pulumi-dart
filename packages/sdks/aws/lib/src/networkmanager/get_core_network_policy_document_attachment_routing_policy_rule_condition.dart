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
  GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition({
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
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

