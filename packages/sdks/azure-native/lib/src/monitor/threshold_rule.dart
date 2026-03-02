// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Threshold-based evaluation rule for a signal definition
class ThresholdRule {
  /// Operator how to compare the signal value with the threshold
  final pulumi.Input<String> operator;
  /// Threshold value
  final pulumi.Input<String> threshold;

  /// Creates a new [ThresholdRule].
  /// [operator] Operator how to compare the signal value with the threshold
  /// [threshold] Threshold value
  ThresholdRule({
    required this.operator,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'threshold': threshold,
    };
  }

  factory ThresholdRule.fromMap(Map<String, dynamic> map) {
    return ThresholdRule(
      operator: (map['operator'] as String).input(),
      threshold: (map['threshold'] as String).input(),
    );
  }
}

