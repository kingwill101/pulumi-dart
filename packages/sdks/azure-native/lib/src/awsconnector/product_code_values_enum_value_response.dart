// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ProductCodeValuesEnumValue
class ProductCodeValuesEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ProductCodeValuesEnumValueResponse].
  /// [value] Property value
  ProductCodeValuesEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ProductCodeValuesEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ProductCodeValuesEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

