// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ImageStateEnumValue
class ImageStateEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ImageStateEnumValueResponse].
  /// [value] Property value
  ImageStateEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ImageStateEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ImageStateEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

