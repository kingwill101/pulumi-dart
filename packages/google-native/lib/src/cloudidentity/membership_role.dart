// ignore_for_file: unused_element, unnecessary_cast

import 'expiry_detail.dart';
import 'restriction_evaluations.dart';

/// A membership role within the Cloud Identity Groups API. A `MembershipRole` defines the privileges granted to a `Membership`.
class MembershipRole {
  /// The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  final ExpiryDetail? expiryDetail;

  /// The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  final String? name;

  /// Evaluations of restrictions applied to parent group on this membership.
  final RestrictionEvaluations? restrictionEvaluations;

  /// Creates a new [MembershipRole].
  /// [expiryDetail] The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  /// [name] The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  /// [restrictionEvaluations] Evaluations of restrictions applied to parent group on this membership.
  MembershipRole({
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

  factory MembershipRole.fromMap(Map<String, dynamic> map) {
    return MembershipRole(
      expiryDetail: map['expiryDetail'] == null
          ? null
          : ExpiryDetail.fromMap(
              (map['expiryDetail'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      restrictionEvaluations: map['restrictionEvaluations'] == null
          ? null
          : RestrictionEvaluations.fromMap(
              (map['restrictionEvaluations'] as Map).cast<String, dynamic>()),
    );
  }
}
