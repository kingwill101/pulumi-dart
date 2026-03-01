// ignore_for_file: unused_element, unnecessary_cast


class CustomPropertyPropertyValue {
  /// The value of an attribute.
  final String? propertyValue;
  /// The value of an attribute id.
  final String? propertyValueId;

  /// Creates a new [CustomPropertyPropertyValue].
  /// [propertyValue] The value of an attribute.
  /// [propertyValueId] The value of an attribute id.
  CustomPropertyPropertyValue({
    this.propertyValue,
    this.propertyValueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyValue': ?propertyValue,
      'propertyValueId': ?propertyValueId,
    };
  }

  factory CustomPropertyPropertyValue.fromMap(Map<String, dynamic> map) {
    return CustomPropertyPropertyValue(
      propertyValue: map['propertyValue'] == null ? null : map['propertyValue'] as String,
      propertyValueId: map['propertyValueId'] == null ? null : map['propertyValueId'] as String,
    );
  }
}

