// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyDefinitionTemplateLinkedPrincipal {
  /// Entity ID of the principal.
  final pulumi.Input<String> entityId;
  /// Entity type of the principal.
  final pulumi.Input<String> entityType;

  /// Creates a new [PolicyDefinitionTemplateLinkedPrincipal].
  /// [entityId] Entity ID of the principal.
  /// [entityType] Entity type of the principal.
  const PolicyDefinitionTemplateLinkedPrincipal({
    required this.entityId,
    required this.entityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'entityType': entityType,
    };
  }

  factory PolicyDefinitionTemplateLinkedPrincipal.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionTemplateLinkedPrincipal(
      entityId: pulumi.Input.fromValue(map['entityId'] as String),
      entityType: pulumi.Input.fromValue(map['entityType'] as String),
    );
  }
}
