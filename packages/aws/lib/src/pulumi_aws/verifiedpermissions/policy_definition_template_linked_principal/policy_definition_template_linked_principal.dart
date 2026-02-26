// ignore_for_file: unused_element, unnecessary_cast

class PolicyDefinitionTemplateLinkedPrincipal {
  /// The entity ID of the principal.
  final String entityId;

  /// The entity type of the principal.
  final String entityType;

  PolicyDefinitionTemplateLinkedPrincipal({
    required this.entityId,
    required this.entityType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityId'] = entityId;
    map['entityType'] = entityType;
    return map;
  }

  factory PolicyDefinitionTemplateLinkedPrincipal.fromMap(
      Map<String, dynamic> map) {
    return PolicyDefinitionTemplateLinkedPrincipal(
      entityId: map['entityId'] as String,
      entityType: map['entityType'] as String,
    );
  }
}
