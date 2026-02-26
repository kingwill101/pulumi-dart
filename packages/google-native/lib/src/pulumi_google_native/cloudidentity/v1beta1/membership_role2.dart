// ignore_for_file: unused_element, unnecessary_cast

import 'expiry_detail2.dart';
import 'restriction_evaluations2.dart';

/// A membership role within the Cloud Identity Groups API. A `MembershipRole` defines the privileges granted to a `Membership`.
class MembershipRole2 {
  /// The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  final ExpiryDetail2? expiryDetail;

  /// The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  final String? name;

  /// Evaluations of restrictions applied to parent group on this membership.
  final RestrictionEvaluations2? restrictionEvaluations;

  MembershipRole2({
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

  factory MembershipRole2.fromMap(Map<String, dynamic> map) {
    return MembershipRole2(
      expiryDetail: map['expiryDetail'] == null
          ? null
          : ExpiryDetail2.fromMap(
              (map['expiryDetail'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      restrictionEvaluations: map['restrictionEvaluations'] == null
          ? null
          : RestrictionEvaluations2.fromMap(
              (map['restrictionEvaluations'] as Map).cast<String, dynamic>()),
    );
  }
}
