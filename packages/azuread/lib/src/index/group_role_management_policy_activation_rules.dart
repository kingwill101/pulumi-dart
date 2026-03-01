// ignore_for_file: unused_element, unnecessary_cast

import 'group_role_management_policy_activation_rules_approval_stage.dart';

class GroupRoleManagementPolicyActivationRules {
  /// An `approval_stage` block as defined below.
  final GroupRoleManagementPolicyActivationRulesApprovalStage? approvalStage;
  /// The maximum length of time an activated role can be valid, in an ISO8601 Duration format (e.g. `PT8H`). Valid range is `PT30M` to `PT23H30M`, in 30 minute increments, or `PT1D`.
  final String? maximumDuration;
  /// Is approval required for activation. If `true` an `approval_stage` block must be provided.
  final bool? requireApproval;
  /// Is a justification required during activation of the role.
  final bool? requireJustification;
  /// Is multi-factor authentication required to activate the role. Conflicts with `required_conditional_access_authentication_context`.
  final bool? requireMultifactorAuthentication;
  /// Is ticket information requrired during activation of the role.
  final bool? requireTicketInfo;
  /// The Entra ID Conditional Access context that must be present for activation (e.g `c1`). Conflicts with `require_multifactor_authentication`.
  final String? requiredConditionalAccessAuthenticationContext;

  /// Creates a new [GroupRoleManagementPolicyActivationRules].
  /// [approvalStage] An `approval_stage` block as defined below.
  /// [maximumDuration] The maximum length of time an activated role can be valid, in an ISO8601 Duration format (e.g. `PT8H`). Valid range is `PT30M` to `PT23H30M`, in 30 minute increments, or `PT1D`.
  /// [requireApproval] Is approval required for activation. If `true` an `approval_stage` block must be provided.
  /// [requireJustification] Is a justification required during activation of the role.
  /// [requireMultifactorAuthentication] Is multi-factor authentication required to activate the role. Conflicts with `required_conditional_access_authentication_context`.
  /// [requireTicketInfo] Is ticket information requrired during activation of the role.
  /// [requiredConditionalAccessAuthenticationContext] The Entra ID Conditional Access context that must be present for activation (e.g `c1`). Conflicts with `require_multifactor_authentication`.
  GroupRoleManagementPolicyActivationRules({
    this.approvalStage,
    this.maximumDuration,
    this.requireApproval,
    this.requireJustification,
    this.requireMultifactorAuthentication,
    this.requireTicketInfo,
    this.requiredConditionalAccessAuthenticationContext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalStage': ?approvalStage == null ? null : approvalStage!.toMap(),
      'maximumDuration': ?maximumDuration,
      'requireApproval': ?requireApproval,
      'requireJustification': ?requireJustification,
      'requireMultifactorAuthentication': ?requireMultifactorAuthentication,
      'requireTicketInfo': ?requireTicketInfo,
      'requiredConditionalAccessAuthenticationContext': ?requiredConditionalAccessAuthenticationContext,
    };
  }

  factory GroupRoleManagementPolicyActivationRules.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyActivationRules(
      approvalStage: map['approvalStage'] == null ? null : GroupRoleManagementPolicyActivationRulesApprovalStage.fromMap((map['approvalStage'] as Map).cast<String, dynamic>()),
      maximumDuration: map['maximumDuration'] == null ? null : map['maximumDuration'] as String,
      requireApproval: map['requireApproval'] == null ? null : map['requireApproval'] as bool,
      requireJustification: map['requireJustification'] == null ? null : map['requireJustification'] as bool,
      requireMultifactorAuthentication: map['requireMultifactorAuthentication'] == null ? null : map['requireMultifactorAuthentication'] as bool,
      requireTicketInfo: map['requireTicketInfo'] == null ? null : map['requireTicketInfo'] as bool,
      requiredConditionalAccessAuthenticationContext: map['requiredConditionalAccessAuthenticationContext'] == null ? null : map['requiredConditionalAccessAuthenticationContext'] as String,
    );
  }
}

