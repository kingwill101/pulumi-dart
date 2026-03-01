// ignore_for_file: unused_element, unnecessary_cast


/// Defines an early termination policy based on running averages of the primary metric of all runs
class MedianStoppingPolicy {
  /// Number of intervals by which to delay the first evaluation.
  final int? delayEvaluation;
  /// Interval (number of runs) between policy evaluations.
  final int? evaluationInterval;
  /// Expected value is 'MedianStopping'.
  final String policyType;

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
      delayEvaluation: map['delayEvaluation'] == null ? null : map['delayEvaluation'] as int,
      evaluationInterval: map['evaluationInterval'] == null ? null : map['evaluationInterval'] as int,
      policyType: map['policyType'] as String,
    );
  }
}

