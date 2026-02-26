// ignore_for_file: unused_element, unnecessary_cast

/// A filter defining the entities that a mapping rule should be applied to. When more than one field is specified, the rule is applied only to entities which match all the fields.
class MappingRuleFilterResponse {
  /// Optional. The rule should be applied to specific entities defined by their fully qualified names.
  final List<String> entities;

  /// Optional. The rule should be applied to entities whose non-qualified name contains the given string.
  final String entityNameContains;

  /// Optional. The rule should be applied to entities whose non-qualified name starts with the given prefix.
  final String entityNamePrefix;

  /// Optional. The rule should be applied to entities whose non-qualified name ends with the given suffix.
  final String entityNameSuffix;

  /// Optional. The rule should be applied to entities whose parent entity (fully qualified name) matches the given value. For example, if the rule applies to a table entity, the expected value should be a schema (schema). If the rule applies to a column or index entity, the expected value can be either a schema (schema) or a table (schema.table)
  final String parentEntity;

  MappingRuleFilterResponse({
    required this.entities,
    required this.entityNameContains,
    required this.entityNamePrefix,
    required this.entityNameSuffix,
    required this.parentEntity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entities'] = entities;
    map['entityNameContains'] = entityNameContains;
    map['entityNamePrefix'] = entityNamePrefix;
    map['entityNameSuffix'] = entityNameSuffix;
    map['parentEntity'] = parentEntity;
    return map;
  }

  factory MappingRuleFilterResponse.fromMap(Map<String, dynamic> map) {
    return MappingRuleFilterResponse(
      entities: (map['entities'] as List).cast<String>(),
      entityNameContains: map['entityNameContains'] as String,
      entityNamePrefix: map['entityNamePrefix'] as String,
      entityNameSuffix: map['entityNameSuffix'] as String,
      parentEntity: map['parentEntity'] as String,
    );
  }
}
