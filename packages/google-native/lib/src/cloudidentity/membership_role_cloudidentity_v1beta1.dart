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

  /// Creates a new [MembershipRoleCloudidentityV1beta1].
  /// [expiryDetail] The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  /// [name] The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  /// [restrictionEvaluations] Evaluations of restrictions applied to parent group on this membership.
  MembershipRoleCloudidentityV1beta1({
    this.expiryDetail,
    this.name,
    this.restrictionEvaluations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryDetail': ?expiryDetail == null ? null : expiryDetail!.toMap(),
      'name': ?name,
      'restrictionEvaluations': ?restrictionEvaluations == null
          ? null
          : restrictionEvaluations!.toMap(),
    };
  }

  factory MembershipRoleCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return MembershipRoleCloudidentityV1beta1(
      expiryDetail: map['expiryDetail'] == null
          ? null
          : ExpiryDetailCloudidentityV1beta1.fromMap(
              (map['expiryDetail'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      restrictionEvaluations: map['restrictionEvaluations'] == null
          ? null
          : RestrictionEvaluationsCloudidentityV1beta1.fromMap(
              (map['restrictionEvaluations'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
