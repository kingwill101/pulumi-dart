// ignore_for_file: unused_element, unnecessary_cast


class GetAscriptsAscriptExtAttribute {
  /// The key of the extended attribute.
  final String attributeKey;
  /// The value of the extended attribute.
  final String attributeValue;

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
      attributeKey: map['attributeKey'] as String,
      attributeValue: map['attributeValue'] as String,
    );
  }
}

