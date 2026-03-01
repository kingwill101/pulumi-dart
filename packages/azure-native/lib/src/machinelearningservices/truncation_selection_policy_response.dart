// ignore_for_file: unused_element, unnecessary_cast


/// Defines an early termination policy that cancels a given percentage of runs at each evaluation interval.
class TruncationSelectionPolicyResponse {
  /// Number of intervals by which to delay the first evaluation.
  final int? delayEvaluation;
  /// Interval (number of runs) between policy evaluations.
  final int? evaluationInterval;
  /// Expected value is 'TruncationSelection'.
  final String policyType;
  /// The percentage of runs to cancel at each evaluation interval.
  final int? truncationPercentage;

  /// Creates a new [TruncationSelectionPolicyResponse].
  /// [delayEvaluation] Number of intervals by which to delay the first evaluation.
  /// [evaluationInterval] Interval (number of runs) between policy evaluations.
  /// [policyType] Expected value is 'TruncationSelection'.
  /// [truncationPercentage] The percentage of runs to cancel at each evaluation interval.
  TruncationSelectionPolicyResponse({
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

  factory TruncationSelectionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return TruncationSelectionPolicyResponse(
      delayEvaluation: map['delayEvaluation'] == null ? null : map['delayEvaluation'] as int,
      evaluationInterval: map['evaluationInterval'] == null ? null : map['evaluationInterval'] as int,
      policyType: map['policyType'] as String,
      truncationPercentage: map['truncationPercentage'] == null ? null : map['truncationPercentage'] as int,
    );
  }
}

