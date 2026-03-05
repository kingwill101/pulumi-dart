// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCoreNetworkPolicyDocumentAttachmentPolicyCondition {
  /// string value
  final pulumi.Input<String>? key;
  /// Valid values include: `equals`, `not-equals`, `contains`, `begins-with`.
  final pulumi.Input<String>? operator;
  /// Must be `routing-policy-label`.
  final pulumi.Input<String> type;
  /// Routing policy label to match.
  final pulumi.Input<String>? value;

  /// Creates a new [GetCoreNetworkPolicyDocumentAttachmentPolicyCondition].
  /// [key] string value
  /// [operator] Valid values include: `equals`, `not-equals`, `contains`, `begins-with`.
  /// [type] Must be `routing-policy-label`.
  /// [value] Routing policy label to match.
  GetCoreNetworkPolicyDocumentAttachmentPolicyCondition({
    this.key,
    this.operator,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?operator,
      'type': type,
      'value': ?value,
    };
  }

  factory GetCoreNetworkPolicyDocumentAttachmentPolicyCondition.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentAttachmentPolicyCondition(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

