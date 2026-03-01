// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AttributeDefinition
class AttributeDefinitionResponse {
  /// A name for the attribute.
  final String? attributeName;
  /// The data type for the attribute, where:  +   ``S`` - the attribute is of type String  +   ``N`` - the attribute is of type Number  +   ``B`` - the attribute is of type Binary
  final String? attributeType;

  /// Creates a new [AttributeDefinitionResponse].
  /// [attributeName] A name for the attribute.
  /// [attributeType] The data type for the attribute, where:  +   ``S`` - the attribute is of type String  +   ``N`` - the attribute is of type Number  +   ``B`` - the attribute is of type Binary
  AttributeDefinitionResponse({
    this.attributeName,
    this.attributeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': ?attributeName,
      'attributeType': ?attributeType,
    };
  }

  factory AttributeDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return AttributeDefinitionResponse(
      attributeName: map['attributeName'] == null ? null : map['attributeName'] as String,
      attributeType: map['attributeType'] == null ? null : map['attributeType'] as String,
    );
  }
}

