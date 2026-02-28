// ignore_for_file: unused_element, unnecessary_cast


class GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec {
  /// Must be specified if type is `DOUBLE`. Maximum value of the parameter.
  final double? maxValue;
  /// Must be specified if type is `DOUBLE`. Minimum value of the parameter.
  final double? minValue;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec].
  /// [maxValue] Must be specified if type is `DOUBLE`. Maximum value of the parameter.
  /// [minValue] Must be specified if type is `DOUBLE`. Minimum value of the parameter.
  GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec({
    this.maxValue,
    this.minValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': ?maxValue,
      'minValue': ?minValue,
    };
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec(
      maxValue: map['maxValue'] == null ? null : map['maxValue'] as double,
      minValue: map['minValue'] == null ? null : map['minValue'] as double,
    );
  }
}

