// ignore_for_file: unused_element, unnecessary_cast

import 'membership_role_restriction_evaluation_response_cloudidentity_v1beta1.dart';

/// Evaluations of restrictions applied to parent group on this membership.
class RestrictionEvaluationsResponseCloudidentityV1beta1 {
  /// Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation.
  final MembershipRoleRestrictionEvaluationResponseCloudidentityV1beta1
  memberRestrictionEvaluation;

  /// Creates a new [RestrictionEvaluationsResponseCloudidentityV1beta1].
  /// [memberRestrictionEvaluation] Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation.
  RestrictionEvaluationsResponseCloudidentityV1beta1({
    required this.memberRestrictionEvaluation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberRestrictionEvaluation': memberRestrictionEvaluation.toMap(),
    };
  }

  factory RestrictionEvaluationsResponseCloudidentityV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestrictionEvaluationsResponseCloudidentityV1beta1(
      memberRestrictionEvaluation:
          MembershipRoleRestrictionEvaluationResponseCloudidentityV1beta1.fromMap(
            (map['memberRestrictionEvaluation'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
