// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceStateNameEnumValue
class InstanceStateNameEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [InstanceStateNameEnumValue].
  /// [value] Property value
  InstanceStateNameEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceStateNameEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceStateNameEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

