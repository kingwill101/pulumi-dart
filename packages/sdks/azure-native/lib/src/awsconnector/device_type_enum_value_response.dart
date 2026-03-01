// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DeviceTypeEnumValue
class DeviceTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [DeviceTypeEnumValueResponse].
  /// [value] Property value
  DeviceTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DeviceTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return DeviceTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

