// ignore_for_file: unused_element, unnecessary_cast

/// An attribute value for a Consent or User data mapping. Each Attribute must have a corresponding AttributeDefinition in the consent store that defines the default and allowed values.
class AttributeResponse2 {
  /// Indicates the name of an attribute defined in the consent store.
  final String attributeDefinitionId;

  /// The value of the attribute. Must be an acceptable value as defined in the consent store. For example, if the consent store defines "data type" with acceptable values "questionnaire" and "step-count", when the attribute name is data type, this field must contain one of those values.
  final List<String> values;

  AttributeResponse2({
    required this.attributeDefinitionId,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributeDefinitionId'] = attributeDefinitionId;
    map['values'] = values;
    return map;
  }

  factory AttributeResponse2.fromMap(Map<String, dynamic> map) {
    return AttributeResponse2(
      attributeDefinitionId: map['attributeDefinitionId'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
