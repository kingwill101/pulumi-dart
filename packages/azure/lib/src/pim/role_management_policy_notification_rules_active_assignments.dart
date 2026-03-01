// ignore_for_file: unused_element, unnecessary_cast

import 'role_management_policy_notification_rules_active_assignments_admin_notifications.dart';
import 'role_management_policy_notification_rules_active_assignments_approver_notifications.dart';
import 'role_management_policy_notification_rules_active_assignments_assignee_notifications.dart';

class RoleManagementPolicyNotificationRulesActiveAssignments {
  /// Admin notification settings
  final RoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotifications? adminNotifications;
  /// Approver notification settings
  final RoleManagementPolicyNotificationRulesActiveAssignmentsApproverNotifications? approverNotifications;
  /// Assignee notification settings
  final RoleManagementPolicyNotificationRulesActiveAssignmentsAssigneeNotifications? assigneeNotifications;

  /// Creates a new [RoleManagementPolicyNotificationRulesActiveAssignments].
  /// [adminNotifications] Admin notification settings
  /// [approverNotifications] Approver notification settings
  /// [assigneeNotifications] Assignee notification settings
  RoleManagementPolicyNotificationRulesActiveAssignments({
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

  factory RoleManagementPolicyNotificationRulesActiveAssignments.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyNotificationRulesActiveAssignments(
      adminNotifications: map['adminNotifications'] == null ? null : RoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotifications.fromMap((map['adminNotifications'] as Map).cast<String, dynamic>()),
      approverNotifications: map['approverNotifications'] == null ? null : RoleManagementPolicyNotificationRulesActiveAssignmentsApproverNotifications.fromMap((map['approverNotifications'] as Map).cast<String, dynamic>()),
      assigneeNotifications: map['assigneeNotifications'] == null ? null : RoleManagementPolicyNotificationRulesActiveAssignmentsAssigneeNotifications.fromMap((map['assigneeNotifications'] as Map).cast<String, dynamic>()),
    );
  }
}

