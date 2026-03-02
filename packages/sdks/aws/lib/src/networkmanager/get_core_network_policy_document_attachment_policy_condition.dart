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
      key: map['key'] == null ? null : ((map['key'] as String).input()).input(),
      operator: map['operator'] == null ? null : ((map['operator'] as String).input()).input(),
      type: (map['type'] as String).input(),
      value: map['value'] == null ? null : ((map['value'] as String).input()).input(),
    );
  }
}

