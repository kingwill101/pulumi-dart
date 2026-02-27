// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'inbound_sso_assignment_sso_mode2.dart';
import 'saml_sso_info2.dart';
import 'sign_in_behavior2.dart';

/// The set of arguments for InboundSsoAssignment.
class InboundSsoAssignmentArgs2 {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  final Input<String>? customer;

  /// Must be zero (which is the default value so it can be omitted) for assignments with `target_org_unit` set and must be greater-than-or-equal-to one for assignments with `target_group` set.
  final Input<int>? rank;

  /// SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`.
  final Input<SamlSsoInfo2>? samlSsoInfo;

  /// Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration.
  final Input<SignInBehavior2>? signInBehavior;

  /// Inbound SSO behavior.
  final Input<InboundSsoAssignmentSsoMode2>? ssoMode;

  /// Immutable. Must be of the form `groups/{group}`.
  final Input<String>? targetGroup;

  /// Immutable. Must be of the form `orgUnits/{org_unit}`.
  final Input<String>? targetOrgUnit;

  InboundSsoAssignmentArgs2({
    this.customer,
    this.rank,
    this.samlSsoInfo,
    this.signInBehavior,
    this.ssoMode,
    this.targetGroup,
    this.targetOrgUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customerValue = customer;
    if (customerValue != null) {
      map['customer'] = customerValue;
    }
    final rankValue = rank;
    if (rankValue != null) {
      map['rank'] = rankValue;
    }
    final samlSsoInfoValue = samlSsoInfo;
    if (samlSsoInfoValue != null) {
      map['samlSsoInfo'] =
          Input.mapOptionalInputValue<SamlSsoInfo2, Map<String, dynamic>>(
              samlSsoInfoValue, (value) => value.toMap());
    }
    final signInBehaviorValue = signInBehavior;
    if (signInBehaviorValue != null) {
      map['signInBehavior'] =
          Input.mapOptionalInputValue<SignInBehavior2, Map<String, dynamic>>(
              signInBehaviorValue, (value) => value.toMap());
    }
    final ssoModeValue = ssoMode;
    if (ssoModeValue != null) {
      map['ssoMode'] =
          Input.mapOptionalInputValue<InboundSsoAssignmentSsoMode2, String>(
              ssoModeValue, (value) => value.value);
    }
    final targetGroupValue = targetGroup;
    if (targetGroupValue != null) {
      map['targetGroup'] = targetGroupValue;
    }
    final targetOrgUnitValue = targetOrgUnit;
    if (targetOrgUnitValue != null) {
      map['targetOrgUnit'] = targetOrgUnitValue;
    }
    return map;
  }

  factory InboundSsoAssignmentArgs2.fromMap(Map<String, dynamic> map) {
    return InboundSsoAssignmentArgs2(
      customer: Input.asOptionalInput<String>(map['customer']),
      rank: Input.asOptionalInput<int>(map['rank']),
      samlSsoInfo: Input.asOptionalInput<SamlSsoInfo2>(map['samlSsoInfo']),
      signInBehavior:
          Input.asOptionalInput<SignInBehavior2>(map['signInBehavior']),
      ssoMode:
          Input.asOptionalInput<InboundSsoAssignmentSsoMode2>(map['ssoMode']),
      targetGroup: Input.asOptionalInput<String>(map['targetGroup']),
      targetOrgUnit: Input.asOptionalInput<String>(map['targetOrgUnit']),
    );
  }
}
