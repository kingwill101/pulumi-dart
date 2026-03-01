// ignore_for_file: unused_element, unnecessary_cast

import 'role_management_policy_notification_rules_eligible_assignments_admin_notifications.dart';
import 'role_management_policy_notification_rules_eligible_assignments_approver_notifications.dart';
import 'role_management_policy_notification_rules_eligible_assignments_assignee_notifications.dart';

class RoleManagementPolicyNotificationRulesEligibleAssignments {
  /// Admin notification settings
  final RoleManagementPolicyNotificationRulesEligibleAssignmentsAdminNotifications? adminNotifications;
  /// Approver notification settings
  final RoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotifications? approverNotifications;
  /// Assignee notification settings
  final RoleManagementPolicyNotificationRulesEligibleAssignmentsAssigneeNotifications? assigneeNotifications;

  /// Creates a new [RoleManagementPolicyNotificationRulesEligibleAssignments].
  /// [adminNotifications] Admin notification settings
  /// [approverNotifications] Approver notification settings
  /// [assigneeNotifications] Assignee notification settings
  RoleManagementPolicyNotificationRulesEligibleAssignments({
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

  factory RoleManagementPolicyNotificationRulesEligibleAssignments.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyNotificationRulesEligibleAssignments(
      adminNotifications: map['adminNotifications'] == null ? null : RoleManagementPolicyNotificationRulesEligibleAssignmentsAdminNotifications.fromMap((map['adminNotifications'] as Map).cast<String, dynamic>()),
      approverNotifications: map['approverNotifications'] == null ? null : RoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotifications.fromMap((map['approverNotifications'] as Map).cast<String, dynamic>()),
      assigneeNotifications: map['assigneeNotifications'] == null ? null : RoleManagementPolicyNotificationRulesEligibleAssignmentsAssigneeNotifications.fromMap((map['assigneeNotifications'] as Map).cast<String, dynamic>()),
    );
  }
}

