// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DeviceTypeEnumValue
class DeviceTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [DeviceTypeEnumValue].
  /// [value] Property value
  DeviceTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DeviceTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return DeviceTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

