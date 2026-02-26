// ignore_for_file: unused_element, unnecessary_cast

import 'membership_role_restriction_evaluation_response2.dart';

/// Evaluations of restrictions applied to parent group on this membership.
class RestrictionEvaluationsResponse2 {
  /// Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation.
  final MembershipRoleRestrictionEvaluationResponse2
      memberRestrictionEvaluation;

  RestrictionEvaluationsResponse2({
    required this.memberRestrictionEvaluation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['memberRestrictionEvaluation'] = memberRestrictionEvaluation.toMap();
    return map;
  }

  factory RestrictionEvaluationsResponse2.fromMap(Map<String, dynamic> map) {
    return RestrictionEvaluationsResponse2(
      memberRestrictionEvaluation:
          MembershipRoleRestrictionEvaluationResponse2.fromMap(
              (map['memberRestrictionEvaluation'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
