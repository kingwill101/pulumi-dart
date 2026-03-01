// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TargetHealthReasonEnumEnumValue
class TargetHealthReasonEnumEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [TargetHealthReasonEnumEnumValue].
  /// [value] Property value
  TargetHealthReasonEnumEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TargetHealthReasonEnumEnumValue.fromMap(Map<String, dynamic> map) {
    return TargetHealthReasonEnumEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

