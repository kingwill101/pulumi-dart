// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_management_policy_notification_rule_eligible_activation_admin_notification.dart';
import 'get_role_management_policy_notification_rule_eligible_activation_approver_notification.dart';
import 'get_role_management_policy_notification_rule_eligible_activation_assignee_notification.dart';

class GetRoleManagementPolicyNotificationRuleEligibleActivation {
  /// A `notification_settings` block as defined above.
  final List<GetRoleManagementPolicyNotificationRuleEligibleActivationAdminNotification> adminNotifications;
  /// A `notification_settings` block as defined above.
  final List<GetRoleManagementPolicyNotificationRuleEligibleActivationApproverNotification> approverNotifications;
  /// A `notification_settings` block as defined above.
  final List<GetRoleManagementPolicyNotificationRuleEligibleActivationAssigneeNotification> assigneeNotifications;

  /// Creates a new [GetRoleManagementPolicyNotificationRuleEligibleActivation].
  /// [adminNotifications] A `notification_settings` block as defined above.
  /// [approverNotifications] A `notification_settings` block as defined above.
  /// [assigneeNotifications] A `notification_settings` block as defined above.
  GetRoleManagementPolicyNotificationRuleEligibleActivation({
    required this.adminNotifications,
    required this.approverNotifications,
    required this.assigneeNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminNotifications': pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRuleEligibleActivationAdminNotification, Map<String, dynamic>>(adminNotifications, (value) => value.toMap()),
      'approverNotifications': pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRuleEligibleActivationApproverNotification, Map<String, dynamic>>(approverNotifications, (value) => value.toMap()),
      'assigneeNotifications': pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRuleEligibleActivationAssigneeNotification, Map<String, dynamic>>(assigneeNotifications, (value) => value.toMap()),
    };
  }

  factory GetRoleManagementPolicyNotificationRuleEligibleActivation.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyNotificationRuleEligibleActivation(
      adminNotifications: pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRuleEligibleActivationAdminNotification>(map['adminNotifications'], (value) => GetRoleManagementPolicyNotificationRuleEligibleActivationAdminNotification.fromMap((value as Map).cast<String, dynamic>())),
      approverNotifications: pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRuleEligibleActivationApproverNotification>(map['approverNotifications'], (value) => GetRoleManagementPolicyNotificationRuleEligibleActivationApproverNotification.fromMap((value as Map).cast<String, dynamic>())),
      assigneeNotifications: pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRuleEligibleActivationAssigneeNotification>(map['assigneeNotifications'], (value) => GetRoleManagementPolicyNotificationRuleEligibleActivationAssigneeNotification.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

