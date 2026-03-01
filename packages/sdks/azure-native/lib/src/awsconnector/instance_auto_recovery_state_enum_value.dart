// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceAutoRecoveryStateEnumValue
class InstanceAutoRecoveryStateEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [InstanceAutoRecoveryStateEnumValue].
  /// [value] Property value
  InstanceAutoRecoveryStateEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceAutoRecoveryStateEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceAutoRecoveryStateEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

