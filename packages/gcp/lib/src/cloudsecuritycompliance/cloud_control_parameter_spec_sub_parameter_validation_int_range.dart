// ignore_for_file: unused_element, unnecessary_cast

class CloudControlParameterSpecSubParameterValidationIntRange {
  /// Maximum allowed value for the numeric parameter (inclusive).
  final String max;

  /// Minimum allowed value for the numeric parameter (inclusive).
  final String min;

  /// Creates a new [CloudControlParameterSpecSubParameterValidationIntRange].
  /// [max] Maximum allowed value for the numeric parameter (inclusive).
  /// [min] Minimum allowed value for the numeric parameter (inclusive).
  CloudControlParameterSpecSubParameterValidationIntRange({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': max, 'min': min};
  }

  factory CloudControlParameterSpecSubParameterValidationIntRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudControlParameterSpecSubParameterValidationIntRange(
      max: map['max'] as String,
      min: map['min'] as String,
    );
  }
}
