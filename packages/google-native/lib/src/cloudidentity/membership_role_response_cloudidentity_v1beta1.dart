// ignore_for_file: unused_element, unnecessary_cast

import 'expiry_detail_response_cloudidentity_v1beta1.dart';
import 'restriction_evaluations_response_cloudidentity_v1beta1.dart';

/// A membership role within the Cloud Identity Groups API. A `MembershipRole` defines the privileges granted to a `Membership`.
class MembershipRoleResponseCloudidentityV1beta1 {
  /// The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  final ExpiryDetailResponseCloudidentityV1beta1 expiryDetail;

  /// The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  final String name;

  /// Evaluations of restrictions applied to parent group on this membership.
  final RestrictionEvaluationsResponseCloudidentityV1beta1
  restrictionEvaluations;

  /// Creates a new [MembershipRoleResponseCloudidentityV1beta1].
  /// [expiryDetail] The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  /// [name] The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  /// [restrictionEvaluations] Evaluations of restrictions applied to parent group on this membership.
  MembershipRoleResponseCloudidentityV1beta1({
    required this.expiryDetail,
    required this.name,
    required this.restrictionEvaluations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryDetail': expiryDetail.toMap(),
      'name': name,
      'restrictionEvaluations': restrictionEvaluations.toMap(),
    };
  }

  factory MembershipRoleResponseCloudidentityV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return MembershipRoleResponseCloudidentityV1beta1(
      expiryDetail: ExpiryDetailResponseCloudidentityV1beta1.fromMap(
        (map['expiryDetail'] as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
      restrictionEvaluations:
          RestrictionEvaluationsResponseCloudidentityV1beta1.fromMap(
            (map['restrictionEvaluations'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
