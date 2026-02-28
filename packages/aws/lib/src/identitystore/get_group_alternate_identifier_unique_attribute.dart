// ignore_for_file: unused_element, unnecessary_cast


class GetGroupAlternateIdentifierUniqueAttribute {
  /// Attribute path that is used to specify which attribute name to search. For example: `DisplayName`. Refer to the [Group data type](https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html).
  final String attributePath;
  /// Value for an attribute.
  final String attributeValue;

  /// Creates a new [GetGroupAlternateIdentifierUniqueAttribute].
  /// [attributePath] Attribute path that is used to specify which attribute name to search. For example: `DisplayName`. Refer to the [Group data type](https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html).
  /// [attributeValue] Value for an attribute.
  GetGroupAlternateIdentifierUniqueAttribute({
    required this.attributePath,
    required this.attributeValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributePath': attributePath,
      'attributeValue': attributeValue,
    };
  }

  factory GetGroupAlternateIdentifierUniqueAttribute.fromMap(Map<String, dynamic> map) {
    return GetGroupAlternateIdentifierUniqueAttribute(
      attributePath: map['attributePath'] as String,
      attributeValue: map['attributeValue'] as String,
    );
  }
}

