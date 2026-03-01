// ignore_for_file: unused_element, unnecessary_cast

class PolicyDefinitionTemplateLinkedPrincipal {
  /// The entity ID of the principal.
  final String entityId;

  /// The entity type of the principal.
  final String entityType;

  /// Creates a new [PolicyDefinitionTemplateLinkedPrincipal].
  /// [entityId] The entity ID of the principal.
  /// [entityType] The entity type of the principal.
  PolicyDefinitionTemplateLinkedPrincipal({
    required this.entityId,
    required this.entityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'entityId': entityId, 'entityType': entityType};
  }

  factory PolicyDefinitionTemplateLinkedPrincipal.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyDefinitionTemplateLinkedPrincipal(
      entityId: map['entityId'] as String,
      entityType: map['entityType'] as String,
    );
  }
}
