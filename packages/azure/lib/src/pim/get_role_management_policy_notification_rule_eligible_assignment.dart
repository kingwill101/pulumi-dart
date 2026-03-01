// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_management_policy_notification_rule_eligible_assignment_admin_notification.dart';
import 'get_role_management_policy_notification_rule_eligible_assignment_approver_notification.dart';
import 'get_role_management_policy_notification_rule_eligible_assignment_assignee_notification.dart';

class GetRoleManagementPolicyNotificationRuleEligibleAssignment {
  /// A `notification_settings` block as defined above.
  final List<GetRoleManagementPolicyNotificationRuleEligibleAssignmentAdminNotification> adminNotifications;
  /// A `notification_settings` block as defined above.
  final List<GetRoleManagementPolicyNotificationRuleEligibleAssignmentApproverNotification> approverNotifications;
  /// A `notification_settings` block as defined above.
  final List<GetRoleManagementPolicyNotificationRuleEligibleAssignmentAssigneeNotification> assigneeNotifications;

  /// Creates a new [GetRoleManagementPolicyNotificationRuleEligibleAssignment].
  /// [adminNotifications] A `notification_settings` block as defined above.
  /// [approverNotifications] A `notification_settings` block as defined above.
  /// [assigneeNotifications] A `notification_settings` block as defined above.
  GetRoleManagementPolicyNotificationRuleEligibleAssignment({
    required this.adminNotifications,
    required this.approverNotifications,
    required this.assigneeNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminNotifications': pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRuleEligibleAssignmentAdminNotification, Map<String, dynamic>>(adminNotifications, (value) => value.toMap()),
      'approverNotifications': pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRuleEligibleAssignmentApproverNotification, Map<String, dynamic>>(approverNotifications, (value) => value.toMap()),
      'assigneeNotifications': pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRuleEligibleAssignmentAssigneeNotification, Map<String, dynamic>>(assigneeNotifications, (value) => value.toMap()),
    };
  }

  factory GetRoleManagementPolicyNotificationRuleEligibleAssignment.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyNotificationRuleEligibleAssignment(
      adminNotifications: pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRuleEligibleAssignmentAdminNotification>(map['adminNotifications'], (value) => GetRoleManagementPolicyNotificationRuleEligibleAssignmentAdminNotification.fromMap((value as Map).cast<String, dynamic>())),
      approverNotifications: pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRuleEligibleAssignmentApproverNotification>(map['approverNotifications'], (value) => GetRoleManagementPolicyNotificationRuleEligibleAssignmentApproverNotification.fromMap((value as Map).cast<String, dynamic>())),
      assigneeNotifications: pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRuleEligibleAssignmentAssigneeNotification>(map['assigneeNotifications'], (value) => GetRoleManagementPolicyNotificationRuleEligibleAssignmentAssigneeNotification.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

