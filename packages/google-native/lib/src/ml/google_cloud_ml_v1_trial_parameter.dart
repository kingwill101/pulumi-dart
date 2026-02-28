// ignore_for_file: unused_element, unnecessary_cast

/// A message representing a parameter to be tuned. Contains the name of the parameter and the suggested value to use for this trial.
class GoogleCloudMlV1TrialParameter {
  /// Must be set if ParameterType is DOUBLE or DISCRETE.
  final double? floatValue;

  /// Must be set if ParameterType is INTEGER
  final String? intValue;

  /// The name of the parameter.
  final String? parameter;

  /// Must be set if ParameterTypeis CATEGORICAL
  final String? stringValue;

  /// Creates a new [GoogleCloudMlV1TrialParameter].
  /// [floatValue] Must be set if ParameterType is DOUBLE or DISCRETE.
  /// [intValue] Must be set if ParameterType is INTEGER
  /// [parameter] The name of the parameter.
  /// [stringValue] Must be set if ParameterTypeis CATEGORICAL
  GoogleCloudMlV1TrialParameter({
    this.floatValue,
    this.intValue,
    this.parameter,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final floatValueValue = floatValue;
    if (floatValueValue != null) {
      map['floatValue'] = floatValueValue;
    }
    final intValueValue = intValue;
    if (intValueValue != null) {
      map['intValue'] = intValueValue;
    }
    final parameterValue = parameter;
    if (parameterValue != null) {
      map['parameter'] = parameterValue;
    }
    final stringValueValue = stringValue;
    if (stringValueValue != null) {
      map['stringValue'] = stringValueValue;
    }
    return map;
  }

  factory GoogleCloudMlV1TrialParameter.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1TrialParameter(
      floatValue:
          map['floatValue'] == null ? null : map['floatValue'] as double,
      intValue: map['intValue'] == null ? null : map['intValue'] as String,
      parameter: map['parameter'] == null ? null : map['parameter'] as String,
      stringValue:
          map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}
