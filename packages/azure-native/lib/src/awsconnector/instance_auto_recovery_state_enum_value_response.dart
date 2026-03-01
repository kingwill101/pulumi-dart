// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceAutoRecoveryStateEnumValue
class InstanceAutoRecoveryStateEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [InstanceAutoRecoveryStateEnumValueResponse].
  /// [value] Property value
  InstanceAutoRecoveryStateEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceAutoRecoveryStateEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return InstanceAutoRecoveryStateEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

