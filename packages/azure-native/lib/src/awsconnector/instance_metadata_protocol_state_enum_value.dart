// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceMetadataProtocolStateEnumValue
class InstanceMetadataProtocolStateEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [InstanceMetadataProtocolStateEnumValue].
  /// [value] Property value
  InstanceMetadataProtocolStateEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceMetadataProtocolStateEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceMetadataProtocolStateEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

