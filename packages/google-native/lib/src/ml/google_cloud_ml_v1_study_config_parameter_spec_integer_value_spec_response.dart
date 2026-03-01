// ignore_for_file: unused_element, unnecessary_cast

class GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpecResponse {
  /// Must be specified if type is `INTEGER`. Maximum value of the parameter.
  final String maxValue;

  /// Must be specified if type is `INTEGER`. Minimum value of the parameter.
  final String minValue;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpecResponse].
  /// [maxValue] Must be specified if type is `INTEGER`. Maximum value of the parameter.
  /// [minValue] Must be specified if type is `INTEGER`. Minimum value of the parameter.
  GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpecResponse({
    required this.maxValue,
    required this.minValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxValue': maxValue, 'minValue': minValue};
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpecResponse(
      maxValue: map['maxValue'] as String,
      minValue: map['minValue'] as String,
    );
  }
}
