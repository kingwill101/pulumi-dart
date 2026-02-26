// ignore_for_file: unused_element, unnecessary_cast

class PolicyDefinitionTemplateLinkedResource {
  /// The entity ID of the resource.
  final String entityId;

  /// The entity type of the resource.
  final String entityType;

  PolicyDefinitionTemplateLinkedResource({
    required this.entityId,
    required this.entityType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityId'] = entityId;
    map['entityType'] = entityType;
    return map;
  }

  factory PolicyDefinitionTemplateLinkedResource.fromMap(
      Map<String, dynamic> map) {
    return PolicyDefinitionTemplateLinkedResource(
      entityId: map['entityId'] as String,
      entityType: map['entityType'] as String,
    );
  }
}
