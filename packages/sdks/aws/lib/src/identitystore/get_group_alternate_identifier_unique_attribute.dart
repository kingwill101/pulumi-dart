// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupAlternateIdentifierUniqueAttribute {
  /// Attribute path that is used to specify which attribute name to search. For example: `DisplayName`. Refer to the [Group data type](https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html).
  final pulumi.Input<String> attributePath;
  /// Value for an attribute.
  final pulumi.Input<String> attributeValue;

  /// Creates a new [GetGroupAlternateIdentifierUniqueAttribute].
  /// [attributePath] Attribute path that is used to specify which attribute name to search. For example: `DisplayName`. Refer to the [Group data type](https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html).
  /// [attributeValue] Value for an attribute.
  const GetGroupAlternateIdentifierUniqueAttribute({
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
      attributePath: pulumi.Input.fromValue(map['attributePath'] as String),
      attributeValue: pulumi.Input.fromValue(map['attributeValue'] as String),
    );
  }
}

