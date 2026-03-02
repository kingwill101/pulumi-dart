// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyDefinitionTemplateLinkedPrincipal {
  /// The entity ID of the principal.
  final pulumi.Input<String> entityId;
  /// The entity type of the principal.
  final pulumi.Input<String> entityType;

  /// Creates a new [PolicyDefinitionTemplateLinkedPrincipal].
  /// [entityId] The entity ID of the principal.
  /// [entityType] The entity type of the principal.
  PolicyDefinitionTemplateLinkedPrincipal({
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
      entityId: (map['entityId'] as String).input(),
      entityType: (map['entityType'] as String).input(),
    );
  }
}

