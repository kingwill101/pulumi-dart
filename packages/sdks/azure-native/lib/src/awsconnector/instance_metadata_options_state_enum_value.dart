// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceMetadataOptionsStateEnumValue
class InstanceMetadataOptionsStateEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [InstanceMetadataOptionsStateEnumValue].
  /// [value] Property value
  InstanceMetadataOptionsStateEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceMetadataOptionsStateEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceMetadataOptionsStateEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

