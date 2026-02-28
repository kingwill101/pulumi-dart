// ignore_for_file: unused_element, unnecessary_cast


class CloudControlParameterSpecValidationRegexpPattern {
  /// Regex Pattern to match the value(s) of parameter.
  final String pattern;

  /// Creates a new [CloudControlParameterSpecValidationRegexpPattern].
  /// [pattern] Regex Pattern to match the value(s) of parameter.
  CloudControlParameterSpecValidationRegexpPattern({
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pattern': pattern,
    };
  }

  factory CloudControlParameterSpecValidationRegexpPattern.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecValidationRegexpPattern(
      pattern: map['pattern'] as String,
    );
  }
}

