// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceMetadataEndpointStateEnumValue
class InstanceMetadataEndpointStateEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [InstanceMetadataEndpointStateEnumValue].
  /// [value] Property value
  InstanceMetadataEndpointStateEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceMetadataEndpointStateEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceMetadataEndpointStateEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

