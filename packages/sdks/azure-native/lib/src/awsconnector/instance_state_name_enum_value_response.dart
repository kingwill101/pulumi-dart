// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceStateNameEnumValue
class InstanceStateNameEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [InstanceStateNameEnumValueResponse].
  /// [value] Property value
  InstanceStateNameEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceStateNameEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return InstanceStateNameEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

