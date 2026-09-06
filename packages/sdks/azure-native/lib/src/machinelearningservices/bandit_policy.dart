// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an early termination policy based on slack criteria, and a frequency and delay interval for evaluation
class BanditPolicy {
  /// Number of intervals by which to delay the first evaluation.
  final pulumi.Input<int?>? delayEvaluation;
  /// Interval (number of runs) between policy evaluations.
  final pulumi.Input<int?>? evaluationInterval;
  /// Expected value is 'Bandit'.
  final pulumi.Input<String> policyType;
  /// Absolute distance allowed from the best performing run.
  final pulumi.Input<double?>? slackAmount;
  /// Ratio of the allowed distance from the best performing run.
  final pulumi.Input<double?>? slackFactor;

  /// Creates a new [BanditPolicy].
  /// [delayEvaluation] Number of intervals by which to delay the first evaluation.
  /// [evaluationInterval] Interval (number of runs) between policy evaluations.
  /// [policyType] Expected value is 'Bandit'.
  /// [slackAmount] Absolute distance allowed from the best performing run.
  /// [slackFactor] Ratio of the allowed distance from the best performing run.
  BanditPolicy({
    pulumi.Input<int?>? delayEvaluation,
    pulumi.Input<int?>? evaluationInterval,
    required this.policyType,
    pulumi.Input<double?>? slackAmount,
    pulumi.Input<double?>? slackFactor,
  }) : delayEvaluation = delayEvaluation ?? pulumi.Input.fromValue(0), evaluationInterval = evaluationInterval ?? pulumi.Input.fromValue(0), slackAmount = slackAmount ?? pulumi.Input.fromValue(0), slackFactor = slackFactor ?? pulumi.Input.fromValue(0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayEvaluation': ?delayEvaluation,
      'evaluationInterval': ?evaluationInterval,
      'policyType': policyType,
      'slackAmount': ?slackAmount,
      'slackFactor': ?slackFactor,
    };
  }

  factory BanditPolicy.fromMap(Map<String, dynamic> map) {
    return BanditPolicy(
      delayEvaluation: (() { final guardedValue = map['delayEvaluation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      evaluationInterval: (() { final guardedValue = map['evaluationInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
      slackAmount: (() { final guardedValue = map['slackAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      slackFactor: (() { final guardedValue = map['slackFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
