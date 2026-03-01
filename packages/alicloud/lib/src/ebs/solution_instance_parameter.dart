// ignore_for_file: unused_element, unnecessary_cast


class SolutionInstanceParameter {
  /// Create parameter Key.
  final String parameterKey;
  /// Create parameter Value.
  final String parameterValue;

  /// Creates a new [SolutionInstanceParameter].
  /// [parameterKey] Create parameter Key.
  /// [parameterValue] Create parameter Value.
  SolutionInstanceParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory SolutionInstanceParameter.fromMap(Map<String, dynamic> map) {
    return SolutionInstanceParameter(
      parameterKey: map['parameterKey'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}

