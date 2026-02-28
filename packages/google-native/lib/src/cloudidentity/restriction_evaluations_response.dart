// ignore_for_file: unused_element, unnecessary_cast

import 'membership_role_restriction_evaluation_response.dart';

/// Evaluations of restrictions applied to parent group on this membership.
class RestrictionEvaluationsResponse {
  /// Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation.
  final MembershipRoleRestrictionEvaluationResponse memberRestrictionEvaluation;

  /// Creates a new [RestrictionEvaluationsResponse].
  /// [memberRestrictionEvaluation] Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation.
  RestrictionEvaluationsResponse({
    required this.memberRestrictionEvaluation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['memberRestrictionEvaluation'] = memberRestrictionEvaluation.toMap();
    return map;
  }

  factory RestrictionEvaluationsResponse.fromMap(Map<String, dynamic> map) {
    return RestrictionEvaluationsResponse(
      memberRestrictionEvaluation:
          MembershipRoleRestrictionEvaluationResponse.fromMap(
              (map['memberRestrictionEvaluation'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
