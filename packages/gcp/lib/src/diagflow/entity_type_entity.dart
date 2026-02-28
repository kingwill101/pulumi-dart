// ignore_for_file: unused_element, unnecessary_cast

class EntityTypeEntity {
  /// A collection of value synonyms. For example, if the entity type is vegetable, and value is scallions, a synonym
  /// could be green onions.
  /// For KIND_LIST entity types:
  /// * This collection must contain exactly one synonym equal to value.
  final List<String> synonyms;

  /// The primary value associated with this entity entry. For example, if the entity type is vegetable, the value
  /// could be scallions.
  /// For KIND_MAP entity types:
  /// * A reference value to be used in place of synonyms.
  /// For KIND_LIST entity types:
  /// * A string that can contain references to other entity types (with or without aliases).
  final String value;

  /// Creates a new [EntityTypeEntity].
  /// [synonyms] A collection of value synonyms. For example, if the entity type is vegetable, and value is scallions, a synonym
  /// [value] The primary value associated with this entity entry. For example, if the entity type is vegetable, the value
  EntityTypeEntity({
    required this.synonyms,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['synonyms'] = synonyms;
    map['value'] = value;
    return map;
  }

  factory EntityTypeEntity.fromMap(Map<String, dynamic> map) {
    return EntityTypeEntity(
      synonyms: (map['synonyms'] as List).cast<String>(),
      value: map['value'] as String,
    );
  }
}
