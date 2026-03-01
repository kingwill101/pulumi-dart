// ignore_for_file: unused_element, unnecessary_cast

/// A message representing a parameter to be tuned. Contains the name of the parameter and the suggested value to use for this trial.
class GoogleCloudMlV1TrialParameterResponse {
  /// Must be set if ParameterType is DOUBLE or DISCRETE.
  final double floatValue;

  /// Must be set if ParameterType is INTEGER
  final String intValue;

  /// The name of the parameter.
  final String parameter;

  /// Must be set if ParameterTypeis CATEGORICAL
  final String stringValue;

  /// Creates a new [GoogleCloudMlV1TrialParameterResponse].
  /// [floatValue] Must be set if ParameterType is DOUBLE or DISCRETE.
  /// [intValue] Must be set if ParameterType is INTEGER
  /// [parameter] The name of the parameter.
  /// [stringValue] Must be set if ParameterTypeis CATEGORICAL
  GoogleCloudMlV1TrialParameterResponse({
    required this.floatValue,
    required this.intValue,
    required this.parameter,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'floatValue': floatValue,
      'intValue': intValue,
      'parameter': parameter,
      'stringValue': stringValue,
    };
  }

  factory GoogleCloudMlV1TrialParameterResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudMlV1TrialParameterResponse(
      floatValue: map['floatValue'] as double,
      intValue: map['intValue'] as String,
      parameter: map['parameter'] as String,
      stringValue: map['stringValue'] as String,
    );
  }
}
