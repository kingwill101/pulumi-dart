// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserAlternateIdentifierUniqueAttribute {
  /// Attribute path that is used to specify which attribute name to search. For example: `UserName`. Refer to the [User data type](https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html).
  final pulumi.Input<String> attributePath;
  /// Value for an attribute.
  final pulumi.Input<String> attributeValue;

  /// Creates a new [GetUserAlternateIdentifierUniqueAttribute].
  /// [attributePath] Attribute path that is used to specify which attribute name to search. For example: `UserName`. Refer to the [User data type](https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html).
  /// [attributeValue] Value for an attribute.
  const GetUserAlternateIdentifierUniqueAttribute({
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
      attributePath: pulumi.Input.fromValue(map['attributePath'] as String),
      attributeValue: pulumi.Input.fromValue(map['attributeValue'] as String),
    );
  }
}

