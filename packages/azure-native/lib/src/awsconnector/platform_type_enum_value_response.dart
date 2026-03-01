// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PlatformTypeEnumValue
class PlatformTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [PlatformTypeEnumValueResponse].
  /// [value] Property value
  PlatformTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PlatformTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return PlatformTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

