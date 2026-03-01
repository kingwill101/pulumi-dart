// ignore_for_file: unused_element, unnecessary_cast


/// Defines an early termination policy based on slack criteria, and a frequency and delay interval for evaluation
class BanditPolicy {
  /// Number of intervals by which to delay the first evaluation.
  final int? delayEvaluation;
  /// Interval (number of runs) between policy evaluations.
  final int? evaluationInterval;
  /// Expected value is 'Bandit'.
  final String policyType;
  /// Absolute distance allowed from the best performing run.
  final double? slackAmount;
  /// Ratio of the allowed distance from the best performing run.
  final double? slackFactor;

  /// Creates a new [BanditPolicy].
  /// [delayEvaluation] Number of intervals by which to delay the first evaluation.
  /// [evaluationInterval] Interval (number of runs) between policy evaluations.
  /// [policyType] Expected value is 'Bandit'.
  /// [slackAmount] Absolute distance allowed from the best performing run.
  /// [slackFactor] Ratio of the allowed distance from the best performing run.
  BanditPolicy({
    this.delayEvaluation,
    this.evaluationInterval,
    required this.policyType,
    this.slackAmount,
    this.slackFactor,
  });

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
      delayEvaluation: map['delayEvaluation'] == null ? null : map['delayEvaluation'] as int,
      evaluationInterval: map['evaluationInterval'] == null ? null : map['evaluationInterval'] as int,
      policyType: map['policyType'] as String,
      slackAmount: map['slackAmount'] == null ? null : map['slackAmount'] as double,
      slackFactor: map['slackFactor'] == null ? null : map['slackFactor'] as double,
    );
  }
}

