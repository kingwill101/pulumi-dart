// ignore_for_file: unused_element, unnecessary_cast

/// Evaluations of restrictions applied to parent group on this membership.
class RestrictionEvaluations2 {
  /// Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation.
  final Map<String, dynamic>? memberRestrictionEvaluation;

  RestrictionEvaluations2({
    this.memberRestrictionEvaluation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final memberRestrictionEvaluationValue = memberRestrictionEvaluation;
    if (memberRestrictionEvaluationValue != null) {
      map['memberRestrictionEvaluation'] = memberRestrictionEvaluationValue;
    }
    return map;
  }

  factory RestrictionEvaluations2.fromMap(Map<String, dynamic> map) {
    return RestrictionEvaluations2(
      memberRestrictionEvaluation: map['memberRestrictionEvaluation'] == null
          ? null
          : (map['memberRestrictionEvaluation'] as Map).cast<String, dynamic>(),
    );
  }
}
