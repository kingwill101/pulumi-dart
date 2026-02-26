// ignore_for_file: unused_element, unnecessary_cast

import 'saml_sso_info_response2.dart';
import 'sign_in_behavior_response2.dart';

/// Result data returned by getInboundSsoAssignment.
class GetInboundSsoAssignmentResult2 {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  final String customer;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the Inbound SSO Assignment.
  final String name;

  /// Must be zero (which is the default value so it can be omitted) for assignments with `target_org_unit` set and must be greater-than-or-equal-to one for assignments with `target_group` set.
  final int rank;

  /// SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`.
  final SamlSsoInfoResponse2 samlSsoInfo;

  /// Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration.
  final SignInBehaviorResponse2 signInBehavior;

  /// Inbound SSO behavior.
  final String ssoMode;

  /// Immutable. Must be of the form `groups/{group}`.
  final String targetGroup;

  /// Immutable. Must be of the form `orgUnits/{org_unit}`.
  final String targetOrgUnit;

  GetInboundSsoAssignmentResult2({
    required this.customer,
    required this.name,
    required this.rank,
    required this.samlSsoInfo,
    required this.signInBehavior,
    required this.ssoMode,
    required this.targetGroup,
    required this.targetOrgUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customer'] = customer;
    map['name'] = name;
    map['rank'] = rank;
    map['samlSsoInfo'] = samlSsoInfo.toMap();
    map['signInBehavior'] = signInBehavior.toMap();
    map['ssoMode'] = ssoMode;
    map['targetGroup'] = targetGroup;
    map['targetOrgUnit'] = targetOrgUnit;
    return map;
  }

  factory GetInboundSsoAssignmentResult2.fromMap(Map<String, dynamic> map) {
    return GetInboundSsoAssignmentResult2(
      customer: map['customer'] as String,
      name: map['name'] as String,
      rank: map['rank'] as int,
      samlSsoInfo: SamlSsoInfoResponse2.fromMap(
          (map['samlSsoInfo'] as Map).cast<String, dynamic>()),
      signInBehavior: SignInBehaviorResponse2.fromMap(
          (map['signInBehavior'] as Map).cast<String, dynamic>()),
      ssoMode: map['ssoMode'] as String,
      targetGroup: map['targetGroup'] as String,
      targetOrgUnit: map['targetOrgUnit'] as String,
    );
  }
}
