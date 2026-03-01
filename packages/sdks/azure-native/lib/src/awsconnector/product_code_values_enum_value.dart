// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ProductCodeValuesEnumValue
class ProductCodeValuesEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ProductCodeValuesEnumValue].
  /// [value] Property value
  ProductCodeValuesEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ProductCodeValuesEnumValue.fromMap(Map<String, dynamic> map) {
    return ProductCodeValuesEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

