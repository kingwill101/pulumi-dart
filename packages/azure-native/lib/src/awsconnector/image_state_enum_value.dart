// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ImageStateEnumValue
class ImageStateEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ImageStateEnumValue].
  /// [value] Property value
  ImageStateEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ImageStateEnumValue.fromMap(Map<String, dynamic> map) {
    return ImageStateEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

