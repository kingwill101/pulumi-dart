// ignore_for_file: unused_element, unnecessary_cast


class StackParameter {
  /// The parameter key.
  final String? parameterKey;
  /// The parameter value.
  final String parameterValue;

  /// Creates a new [StackParameter].
  /// [parameterKey] The parameter key.
  /// [parameterValue] The parameter value.
  StackParameter({
    this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': ?parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory StackParameter.fromMap(Map<String, dynamic> map) {
    return StackParameter(
      parameterKey: map['parameterKey'] == null ? null : map['parameterKey'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}

