// ignore_for_file: unused_element, unnecessary_cast

import 'expiry_detail_response2.dart';
import 'restriction_evaluations_response2.dart';

/// A membership role within the Cloud Identity Groups API. A `MembershipRole` defines the privileges granted to a `Membership`.
class MembershipRoleResponse2 {
  /// The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  final ExpiryDetailResponse2 expiryDetail;

  /// The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  final String name;

  /// Evaluations of restrictions applied to parent group on this membership.
  final RestrictionEvaluationsResponse2 restrictionEvaluations;

  MembershipRoleResponse2({
    required this.expiryDetail,
    required this.name,
    required this.restrictionEvaluations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expiryDetail'] = expiryDetail.toMap();
    map['name'] = name;
    map['restrictionEvaluations'] = restrictionEvaluations.toMap();
    return map;
  }

  factory MembershipRoleResponse2.fromMap(Map<String, dynamic> map) {
    return MembershipRoleResponse2(
      expiryDetail: ExpiryDetailResponse2.fromMap(
          (map['expiryDetail'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      restrictionEvaluations: RestrictionEvaluationsResponse2.fromMap(
          (map['restrictionEvaluations'] as Map).cast<String, dynamic>()),
    );
  }
}
