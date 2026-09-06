// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an early termination policy based on running averages of the primary metric of all runs
class MedianStoppingPolicyResponse {
  /// Number of intervals by which to delay the first evaluation.
  final pulumi.Input<int?>? delayEvaluation;
  /// Interval (number of runs) between policy evaluations.
  final pulumi.Input<int?>? evaluationInterval;
  /// Expected value is 'MedianStopping'.
  final pulumi.Input<String> policyType;

  /// Creates a new [MedianStoppingPolicyResponse].
  /// [delayEvaluation] Number of intervals by which to delay the first evaluation.
  /// [evaluationInterval] Interval (number of runs) between policy evaluations.
  /// [policyType] Expected value is 'MedianStopping'.
  MedianStoppingPolicyResponse({
    pulumi.Input<int?>? delayEvaluation,
    pulumi.Input<int?>? evaluationInterval,
    required this.policyType,
  }) : delayEvaluation = delayEvaluation ?? pulumi.Input.fromValue(0), evaluationInterval = evaluationInterval ?? pulumi.Input.fromValue(0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayEvaluation': ?delayEvaluation,
      'evaluationInterval': ?evaluationInterval,
      'policyType': policyType,
    };
  }

  factory MedianStoppingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return MedianStoppingPolicyResponse(
      delayEvaluation: (() { final guardedValue = map['delayEvaluation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      evaluationInterval: (() { final guardedValue = map['evaluationInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
    );
  }
}
