// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TargetHealthStateEnumEnumValue
class TargetHealthStateEnumEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [TargetHealthStateEnumEnumValue].
  /// [value] Property value
  TargetHealthStateEnumEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TargetHealthStateEnumEnumValue.fromMap(Map<String, dynamic> map) {
    return TargetHealthStateEnumEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

