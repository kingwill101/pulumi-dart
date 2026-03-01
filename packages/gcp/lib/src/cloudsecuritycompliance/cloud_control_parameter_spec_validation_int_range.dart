// ignore_for_file: unused_element, unnecessary_cast

class CloudControlParameterSpecValidationIntRange {
  /// Maximum allowed value for the numeric parameter (inclusive).
  final String max;

  /// Minimum allowed value for the numeric parameter (inclusive).
  final String min;

  /// Creates a new [CloudControlParameterSpecValidationIntRange].
  /// [max] Maximum allowed value for the numeric parameter (inclusive).
  /// [min] Minimum allowed value for the numeric parameter (inclusive).
  CloudControlParameterSpecValidationIntRange({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': max, 'min': min};
  }

  factory CloudControlParameterSpecValidationIntRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudControlParameterSpecValidationIntRange(
      max: map['max'] as String,
      min: map['min'] as String,
    );
  }
}
