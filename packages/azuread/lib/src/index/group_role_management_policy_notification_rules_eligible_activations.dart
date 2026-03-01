// ignore_for_file: unused_element, unnecessary_cast

import 'group_role_management_policy_notification_rules_eligible_activations_admin_notifications.dart';
import 'group_role_management_policy_notification_rules_eligible_activations_approver_notifications.dart';
import 'group_role_management_policy_notification_rules_eligible_activations_assignee_notifications.dart';

class GroupRoleManagementPolicyNotificationRulesEligibleActivations {
  /// Admin notification settings
  final GroupRoleManagementPolicyNotificationRulesEligibleActivationsAdminNotifications? adminNotifications;
  /// Approver notification settings
  final GroupRoleManagementPolicyNotificationRulesEligibleActivationsApproverNotifications? approverNotifications;
  /// Assignee notification settings
  final GroupRoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications? assigneeNotifications;

  /// Creates a new [GroupRoleManagementPolicyNotificationRulesEligibleActivations].
  /// [adminNotifications] Admin notification settings
  /// [approverNotifications] Approver notification settings
  /// [assigneeNotifications] Assignee notification settings
  GroupRoleManagementPolicyNotificationRulesEligibleActivations({
    this.adminNotifications,
    this.approverNotifications,
    this.assigneeNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminNotifications': ?adminNotifications == null ? null : adminNotifications!.toMap(),
      'approverNotifications': ?approverNotifications == null ? null : approverNotifications!.toMap(),
      'assigneeNotifications': ?assigneeNotifications == null ? null : assigneeNotifications!.toMap(),
    };
  }

  factory GroupRoleManagementPolicyNotificationRulesEligibleActivations.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyNotificationRulesEligibleActivations(
      adminNotifications: map['adminNotifications'] == null ? null : GroupRoleManagementPolicyNotificationRulesEligibleActivationsAdminNotifications.fromMap((map['adminNotifications'] as Map).cast<String, dynamic>()),
      approverNotifications: map['approverNotifications'] == null ? null : GroupRoleManagementPolicyNotificationRulesEligibleActivationsApproverNotifications.fromMap((map['approverNotifications'] as Map).cast<String, dynamic>()),
      assigneeNotifications: map['assigneeNotifications'] == null ? null : GroupRoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications.fromMap((map['assigneeNotifications'] as Map).cast<String, dynamic>()),
    );
  }
}

