// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an early termination policy that cancels a given percentage of runs at each evaluation interval.
class TruncationSelectionPolicy {
  /// Number of intervals by which to delay the first evaluation.
  final pulumi.Input<int?>? delayEvaluation;
  /// Interval (number of runs) between policy evaluations.
  final pulumi.Input<int?>? evaluationInterval;
  /// Expected value is 'TruncationSelection'.
  final pulumi.Input<String> policyType;
  /// The percentage of runs to cancel at each evaluation interval.
  final pulumi.Input<int?>? truncationPercentage;

  /// Creates a new [TruncationSelectionPolicy].
  /// [delayEvaluation] Number of intervals by which to delay the first evaluation.
  /// [evaluationInterval] Interval (number of runs) between policy evaluations.
  /// [policyType] Expected value is 'TruncationSelection'.
  /// [truncationPercentage] The percentage of runs to cancel at each evaluation interval.
  TruncationSelectionPolicy({
    pulumi.Input<int?>? delayEvaluation,
    pulumi.Input<int?>? evaluationInterval,
    required this.policyType,
    pulumi.Input<int?>? truncationPercentage,
  }) : delayEvaluation = delayEvaluation ?? pulumi.Input.fromValue(0), evaluationInterval = evaluationInterval ?? pulumi.Input.fromValue(0), truncationPercentage = truncationPercentage ?? pulumi.Input.fromValue(0);

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
      delayEvaluation: (() { final guardedValue = map['delayEvaluation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      evaluationInterval: (() { final guardedValue = map['evaluationInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
      truncationPercentage: (() { final guardedValue = map['truncationPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
