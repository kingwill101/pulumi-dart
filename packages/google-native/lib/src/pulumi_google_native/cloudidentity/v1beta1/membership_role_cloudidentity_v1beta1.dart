// ignore_for_file: unused_element, unnecessary_cast

import 'expiry_detail_cloudidentity_v1beta1.dart';
import 'restriction_evaluations_cloudidentity_v1beta1.dart';

/// A membership role within the Cloud Identity Groups API. A `MembershipRole` defines the privileges granted to a `Membership`.
class MembershipRoleCloudidentityV1beta1 {
  /// The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  final ExpiryDetailCloudidentityV1beta1? expiryDetail;

  /// The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  final String? name;

  /// Evaluations of restrictions applied to parent group on this membership.
  final RestrictionEvaluationsCloudidentityV1beta1? restrictionEvaluations;

  MembershipRoleCloudidentityV1beta1({
    this.expiryDetail,
    this.name,
    this.restrictionEvaluations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expiryDetailValue = expiryDetail;
    if (expiryDetailValue != null) {
      map['expiryDetail'] = expiryDetailValue.toMap();
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final restrictionEvaluationsValue = restrictionEvaluations;
    if (restrictionEvaluationsValue != null) {
      map['restrictionEvaluations'] = restrictionEvaluationsValue.toMap();
    }
    return map;
  }

  factory MembershipRoleCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return MembershipRoleCloudidentityV1beta1(
      expiryDetail: map['expiryDetail'] == null
          ? null
          : ExpiryDetailCloudidentityV1beta1.fromMap(
              (map['expiryDetail'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      restrictionEvaluations: map['restrictionEvaluations'] == null
          ? null
          : RestrictionEvaluationsCloudidentityV1beta1.fromMap(
              (map['restrictionEvaluations'] as Map).cast<String, dynamic>()),
    );
  }
}
