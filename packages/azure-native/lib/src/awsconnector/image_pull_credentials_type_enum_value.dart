// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ImagePullCredentialsTypeEnumValue
class ImagePullCredentialsTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ImagePullCredentialsTypeEnumValue].
  /// [value] Property value
  ImagePullCredentialsTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ImagePullCredentialsTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return ImagePullCredentialsTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

