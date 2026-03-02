// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an early termination policy based on running averages of the primary metric of all runs
class MedianStoppingPolicy {
  /// Number of intervals by which to delay the first evaluation.
  final pulumi.Input<int>? delayEvaluation;
  /// Interval (number of runs) between policy evaluations.
  final pulumi.Input<int>? evaluationInterval;
  /// Expected value is 'MedianStopping'.
  final pulumi.Input<String> policyType;

  /// Creates a new [MedianStoppingPolicy].
  /// [delayEvaluation] Number of intervals by which to delay the first evaluation.
  /// [evaluationInterval] Interval (number of runs) between policy evaluations.
  /// [policyType] Expected value is 'MedianStopping'.
  MedianStoppingPolicy({
    this.delayEvaluation,
    this.evaluationInterval,
    required this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayEvaluation': ?delayEvaluation,
      'evaluationInterval': ?evaluationInterval,
      'policyType': policyType,
    };
  }

  factory MedianStoppingPolicy.fromMap(Map<String, dynamic> map) {
    return MedianStoppingPolicy(
      delayEvaluation: map['delayEvaluation'] == null ? null : (map['delayEvaluation']! as int).input(),
      evaluationInterval: map['evaluationInterval'] == null ? null : (map['evaluationInterval']! as int).input(),
      policyType: (map['policyType'] as String).input(),
    );
  }
}

