// ignore_for_file: unused_element, unnecessary_cast


class GetUserAlternateIdentifierUniqueAttribute {
  /// Attribute path that is used to specify which attribute name to search. For example: `UserName`. Refer to the [User data type](https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html).
  final String attributePath;
  /// Value for an attribute.
  final String attributeValue;

  /// Creates a new [GetUserAlternateIdentifierUniqueAttribute].
  /// [attributePath] Attribute path that is used to specify which attribute name to search. For example: `UserName`. Refer to the [User data type](https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html).
  /// [attributeValue] Value for an attribute.
  GetUserAlternateIdentifierUniqueAttribute({
    required this.attributePath,
    required this.attributeValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributePath': attributePath,
      'attributeValue': attributeValue,
    };
  }

  factory GetUserAlternateIdentifierUniqueAttribute.fromMap(Map<String, dynamic> map) {
    return GetUserAlternateIdentifierUniqueAttribute(
      attributePath: map['attributePath'] as String,
      attributeValue: map['attributeValue'] as String,
    );
  }
}

