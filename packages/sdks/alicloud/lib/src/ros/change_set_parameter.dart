// ignore_for_file: unused_element, unnecessary_cast


class ChangeSetParameter {
  /// The parameter key.
  final String parameterKey;
  /// The parameter value.
  final String parameterValue;

  /// Creates a new [ChangeSetParameter].
  /// [parameterKey] The parameter key.
  /// [parameterValue] The parameter value.
  ChangeSetParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory ChangeSetParameter.fromMap(Map<String, dynamic> map) {
    return ChangeSetParameter(
      parameterKey: map['parameterKey'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}

