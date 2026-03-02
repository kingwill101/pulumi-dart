// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an early termination policy that cancels a given percentage of runs at each evaluation interval.
class TruncationSelectionPolicy {
  /// Number of intervals by which to delay the first evaluation.
  final pulumi.Input<int>? delayEvaluation;
  /// Interval (number of runs) between policy evaluations.
  final pulumi.Input<int>? evaluationInterval;
  /// Expected value is 'TruncationSelection'.
  final pulumi.Input<String> policyType;
  /// The percentage of runs to cancel at each evaluation interval.
  final pulumi.Input<int>? truncationPercentage;

  /// Creates a new [TruncationSelectionPolicy].
  /// [delayEvaluation] Number of intervals by which to delay the first evaluation.
  /// [evaluationInterval] Interval (number of runs) between policy evaluations.
  /// [policyType] Expected value is 'TruncationSelection'.
  /// [truncationPercentage] The percentage of runs to cancel at each evaluation interval.
  TruncationSelectionPolicy({
    this.delayEvaluation,
    this.evaluationInterval,
    required this.policyType,
    this.truncationPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayEvaluation': ?delayEvaluation,
      'evaluationInterval': ?evaluationInterval,
      'policyType': policyType,
      'truncationPercentage': ?truncationPercentage,
    };
  }

  factory TruncationSelectionPolicy.fromMap(Map<String, dynamic> map) {
    return TruncationSelectionPolicy(
      delayEvaluation: map['delayEvaluation'] == null ? null : (map['delayEvaluation']! as int).input(),
      evaluationInterval: map['evaluationInterval'] == null ? null : (map['evaluationInterval']! as int).input(),
      policyType: (map['policyType'] as String).input(),
      truncationPercentage: map['truncationPercentage'] == null ? null : (map['truncationPercentage']! as int).input(),
    );
  }
}

