// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAscriptsAscriptExtAttribute {
  /// The key of the extended attribute.
  final pulumi.Input<String> attributeKey;

  /// The value of the extended attribute.
  final pulumi.Input<String> attributeValue;

  /// Creates a new [GetAscriptsAscriptExtAttribute].
  /// [attributeKey] The key of the extended attribute.
  /// [attributeValue] The value of the extended attribute.
  GetAscriptsAscriptExtAttribute({
    required this.attributeKey,
    required this.attributeValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeKey': attributeKey,
      'attributeValue': attributeValue,
    };
  }

  factory GetAscriptsAscriptExtAttribute.fromMap(Map<String, dynamic> map) {
    return GetAscriptsAscriptExtAttribute(
      attributeKey: pulumi.Input.fromValue(map['attributeKey'] as String),
      attributeValue: pulumi.Input.fromValue(map['attributeValue'] as String),
    );
  }
}
