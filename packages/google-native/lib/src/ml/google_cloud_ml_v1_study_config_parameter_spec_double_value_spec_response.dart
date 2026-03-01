// ignore_for_file: unused_element, unnecessary_cast

class GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpecResponse {
  /// Must be specified if type is `DOUBLE`. Maximum value of the parameter.
  final double maxValue;

  /// Must be specified if type is `DOUBLE`. Minimum value of the parameter.
  final double minValue;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpecResponse].
  /// [maxValue] Must be specified if type is `DOUBLE`. Maximum value of the parameter.
  /// [minValue] Must be specified if type is `DOUBLE`. Minimum value of the parameter.
  GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpecResponse({
    required this.maxValue,
    required this.minValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxValue': maxValue, 'minValue': minValue};
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpecResponse(
      maxValue: map['maxValue'] as double,
      minValue: map['minValue'] as double,
    );
  }
}
