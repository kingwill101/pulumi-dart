// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ImageTypeValuesEnumValue
class ImageTypeValuesEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ImageTypeValuesEnumValue].
  /// [value] Property value
  ImageTypeValuesEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ImageTypeValuesEnumValue.fromMap(Map<String, dynamic> map) {
    return ImageTypeValuesEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

