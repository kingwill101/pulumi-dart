// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AccountAttributeValue
class AccountAttributeValue {
  /// <p>The value of the attribute.</p>
  final String? attributeValue;

  /// Creates a new [AccountAttributeValue].
  /// [attributeValue] <p>The value of the attribute.</p>
  AccountAttributeValue({
    this.attributeValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeValue': ?attributeValue,
    };
  }

  factory AccountAttributeValue.fromMap(Map<String, dynamic> map) {
    return AccountAttributeValue(
      attributeValue: map['attributeValue'] == null ? null : map['attributeValue'] as String,
    );
  }
}

