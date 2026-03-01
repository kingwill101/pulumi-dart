// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceMetadataOptionsStateEnumValue
class InstanceMetadataOptionsStateEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [InstanceMetadataOptionsStateEnumValueResponse].
  /// [value] Property value
  InstanceMetadataOptionsStateEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceMetadataOptionsStateEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return InstanceMetadataOptionsStateEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

