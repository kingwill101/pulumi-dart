// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PropertyValueTypeEnumValue
class PropertyValueTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [PropertyValueTypeEnumValue].
  /// [value] Property value
  PropertyValueTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PropertyValueTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return PropertyValueTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

