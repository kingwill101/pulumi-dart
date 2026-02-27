// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_sso_assignment_sso_mode.dart';
import 'saml_sso_info.dart';
import 'sign_in_behavior.dart';

/// The set of arguments for InboundSsoAssignment.
class InboundSsoAssignmentArgs {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  final pulumi.Input<String>? customer;

  /// Must be zero (which is the default value so it can be omitted) for assignments with `target_org_unit` set and must be greater-than-or-equal-to one for assignments with `target_group` set.
  final pulumi.Input<int>? rank;

  /// SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`.
  final pulumi.Input<SamlSsoInfo>? samlSsoInfo;

  /// Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration.
  final pulumi.Input<SignInBehavior>? signInBehavior;

  /// Inbound SSO behavior.
  final pulumi.Input<InboundSsoAssignmentSsoMode>? ssoMode;

  /// Immutable. Must be of the form `groups/{group}`.
  final pulumi.Input<String>? targetGroup;

  /// Immutable. Must be of the form `orgUnits/{org_unit}`.
  final pulumi.Input<String>? targetOrgUnit;

  InboundSsoAssignmentArgs({
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
          pulumi.Input.mapOptionalInputValue<SamlSsoInfo, Map<String, dynamic>>(
              samlSsoInfoValue, (value) => value.toMap());
    }
    final signInBehaviorValue = signInBehavior;
    if (signInBehaviorValue != null) {
      map['signInBehavior'] = pulumi.Input.mapOptionalInputValue<SignInBehavior,
          Map<String, dynamic>>(signInBehaviorValue, (value) => value.toMap());
    }
    final ssoModeValue = ssoMode;
    if (ssoModeValue != null) {
      map['ssoMode'] = pulumi.Input.mapOptionalInputValue<
          InboundSsoAssignmentSsoMode,
          String>(ssoModeValue, (value) => value.value);
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

  factory InboundSsoAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return InboundSsoAssignmentArgs(
      customer: pulumi.Input.asOptionalInput<String>(map['customer']),
      rank: pulumi.Input.asOptionalInput<int>(map['rank']),
      samlSsoInfo:
          pulumi.Input.asOptionalInput<SamlSsoInfo>(map['samlSsoInfo']),
      signInBehavior:
          pulumi.Input.asOptionalInput<SignInBehavior>(map['signInBehavior']),
      ssoMode: pulumi.Input.asOptionalInput<InboundSsoAssignmentSsoMode>(
          map['ssoMode']),
      targetGroup: pulumi.Input.asOptionalInput<String>(map['targetGroup']),
      targetOrgUnit: pulumi.Input.asOptionalInput<String>(map['targetOrgUnit']),
    );
  }
}
