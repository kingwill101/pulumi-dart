// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PointInTimeRecoveryStatusEnumValue
class PointInTimeRecoveryStatusEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [PointInTimeRecoveryStatusEnumValue].
  /// [value] Property value
  PointInTimeRecoveryStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PointInTimeRecoveryStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return PointInTimeRecoveryStatusEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

