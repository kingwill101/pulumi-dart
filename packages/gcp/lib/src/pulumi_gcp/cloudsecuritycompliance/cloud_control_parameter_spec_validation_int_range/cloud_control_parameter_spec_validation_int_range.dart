// ignore_for_file: unused_element, unnecessary_cast

class CloudControlParameterSpecValidationIntRange {
  /// Maximum allowed value for the numeric parameter (inclusive).
  final String max;

  /// Minimum allowed value for the numeric parameter (inclusive).
  final String min;

  CloudControlParameterSpecValidationIntRange({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory CloudControlParameterSpecValidationIntRange.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecValidationIntRange(
      max: map['max'] as String,
      min: map['min'] as String,
    );
  }
}
