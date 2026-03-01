// ignore_for_file: unused_element, unnecessary_cast

class PolicyDefinitionTemplateLinkedResource {
  /// The entity ID of the resource.
  final String entityId;

  /// The entity type of the resource.
  final String entityType;

  /// Creates a new [PolicyDefinitionTemplateLinkedResource].
  /// [entityId] The entity ID of the resource.
  /// [entityType] The entity type of the resource.
  PolicyDefinitionTemplateLinkedResource({
    required this.entityId,
    required this.entityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'entityId': entityId, 'entityType': entityType};
  }

  factory PolicyDefinitionTemplateLinkedResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyDefinitionTemplateLinkedResource(
      entityId: map['entityId'] as String,
      entityType: map['entityType'] as String,
    );
  }
}
