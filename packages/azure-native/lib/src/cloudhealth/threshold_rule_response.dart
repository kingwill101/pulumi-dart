// ignore_for_file: unused_element, unnecessary_cast


/// Threshold-based evaluation rule for a signal definition
class ThresholdRuleResponse {
  /// Operator how to compare the signal value with the threshold
  final String operator;
  /// Threshold value
  final String threshold;

  /// Creates a new [ThresholdRuleResponse].
  /// [operator] Operator how to compare the signal value with the threshold
  /// [threshold] Threshold value
  ThresholdRuleResponse({
    required this.operator,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'threshold': threshold,
    };
  }

  factory ThresholdRuleResponse.fromMap(Map<String, dynamic> map) {
    return ThresholdRuleResponse(
      operator: map['operator'] as String,
      threshold: map['threshold'] as String,
    );
  }
}

