// ignore_for_file: unused_element, unnecessary_cast

class CloudControlParameterSpecSubParameterValidationRegexpPattern {
  /// Regex Pattern to match the value(s) of parameter.
  final String pattern;

  /// Creates a new [CloudControlParameterSpecSubParameterValidationRegexpPattern].
  /// [pattern] Regex Pattern to match the value(s) of parameter.
  CloudControlParameterSpecSubParameterValidationRegexpPattern({
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pattern'] = pattern;
    return map;
  }

  factory CloudControlParameterSpecSubParameterValidationRegexpPattern.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterValidationRegexpPattern(
      pattern: map['pattern'] as String,
    );
  }
}
