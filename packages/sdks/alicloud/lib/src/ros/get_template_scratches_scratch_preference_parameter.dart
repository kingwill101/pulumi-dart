// ignore_for_file: unused_element, unnecessary_cast


class GetTemplateScratchesScratchPreferenceParameter {
  /// Priority parameter key.
  final String parameterKey;
  /// Priority parameter value.
  final String parameterValue;

  /// Creates a new [GetTemplateScratchesScratchPreferenceParameter].
  /// [parameterKey] Priority parameter key.
  /// [parameterValue] Priority parameter value.
  GetTemplateScratchesScratchPreferenceParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory GetTemplateScratchesScratchPreferenceParameter.fromMap(Map<String, dynamic> map) {
    return GetTemplateScratchesScratchPreferenceParameter(
      parameterKey: map['parameterKey'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}

