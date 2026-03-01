// ignore_for_file: unused_element, unnecessary_cast


/// Definition of VolumeTypeEnumValue
class VolumeTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [VolumeTypeEnumValue].
  /// [value] Property value
  VolumeTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory VolumeTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return VolumeTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

