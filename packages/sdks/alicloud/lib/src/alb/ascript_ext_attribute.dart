// ignore_for_file: unused_element, unnecessary_cast


class AScriptExtAttribute {
  /// Key to extend attribute
  final String? attributeKey;
  /// The value of the extended attribute
  final String? attributeValue;

  /// Creates a new [AScriptExtAttribute].
  /// [attributeKey] Key to extend attribute
  /// [attributeValue] The value of the extended attribute
  AScriptExtAttribute({
    this.attributeKey,
    this.attributeValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeKey': ?attributeKey,
      'attributeValue': ?attributeValue,
    };
  }

  factory AScriptExtAttribute.fromMap(Map<String, dynamic> map) {
    return AScriptExtAttribute(
      attributeKey: map['attributeKey'] == null ? null : map['attributeKey'] as String,
      attributeValue: map['attributeValue'] == null ? null : map['attributeValue'] as String,
    );
  }
}

