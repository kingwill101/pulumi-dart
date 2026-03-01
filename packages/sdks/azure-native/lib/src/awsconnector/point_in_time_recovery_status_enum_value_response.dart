// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PointInTimeRecoveryStatusEnumValue
class PointInTimeRecoveryStatusEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [PointInTimeRecoveryStatusEnumValueResponse].
  /// [value] Property value
  PointInTimeRecoveryStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PointInTimeRecoveryStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return PointInTimeRecoveryStatusEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

