// ignore_for_file: unused_element, unnecessary_cast


/// An **entity entry** for an associated entity type.
class GoogleCloudDialogflowCxV3EntityTypeEntityResponse {
  /// A collection of value synonyms. For example, if the entity type is *vegetable*, and `value` is *scallions*, a synonym could be *green onions*. For `KIND_LIST` entity types: * This collection must contain exactly one synonym equal to `value`.
  final List<String> synonyms;
  /// The primary value associated with this entity entry. For example, if the entity type is *vegetable*, the value could be *scallions*. For `KIND_MAP` entity types: * A canonical value to be used in place of synonyms. For `KIND_LIST` entity types: * A string that can contain references to other entity types (with or without aliases).
  final String value;

  /// Creates a new [GoogleCloudDialogflowCxV3EntityTypeEntityResponse].
  /// [synonyms] A collection of value synonyms. For example, if the entity type is *vegetable*, and `value` is *scallions*, a synonym could be *green onions*. For `KIND_LIST` entity types: * This collection must contain exactly one synonym equal to `value`.
  /// [value] The primary value associated with this entity entry. For example, if the entity type is *vegetable*, the value could be *scallions*. For `KIND_MAP` entity types: * A canonical value to be used in place of synonyms. For `KIND_LIST` entity types: * A string that can contain references to other entity types (with or without aliases).
  GoogleCloudDialogflowCxV3EntityTypeEntityResponse({
    required this.synonyms,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'synonyms': synonyms,
      'value': value,
    };
  }

  factory GoogleCloudDialogflowCxV3EntityTypeEntityResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EntityTypeEntityResponse(
      synonyms: (map['synonyms'] as List).cast<String>(),
      value: map['value'] as String,
    );
  }
}

