// ignore_for_file: unused_element, unnecessary_cast

import 'role_management_policy_rule_target.dart';

/// The role management policy notification rule.
class RoleManagementPolicyNotificationRule {
  /// The id of the rule.
  final String? id;
  /// Determines if the notification will be sent to the recipient type specified in the policy rule.
  final bool? isDefaultRecipientsEnabled;
  /// The notification level.
  final String? notificationLevel;
  /// The list of notification recipients.
  final List<String>? notificationRecipients;
  /// The type of notification.
  final String? notificationType;
  /// The recipient type.
  final String? recipientType;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyNotificationRule'.
  final String ruleType;
  /// The target of the current rule.
  final RoleManagementPolicyRuleTarget? target;

  /// Creates a new [RoleManagementPolicyNotificationRule].
  /// [id] The id of the rule.
  /// [isDefaultRecipientsEnabled] Determines if the notification will be sent to the recipient type specified in the policy rule.
  /// [notificationLevel] The notification level.
  /// [notificationRecipients] The list of notification recipients.
  /// [notificationType] The type of notification.
  /// [recipientType] The recipient type.
  /// [ruleType] The type of rule
  /// [target] The target of the current rule.
  RoleManagementPolicyNotificationRule({
    this.id,
    this.isDefaultRecipientsEnabled,
    this.notificationLevel,
    this.notificationRecipients,
    this.notificationType,
    this.recipientType,
    required this.ruleType,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'isDefaultRecipientsEnabled': ?isDefaultRecipientsEnabled,
      'notificationLevel': ?notificationLevel,
      'notificationRecipients': ?notificationRecipients,
      'notificationType': ?notificationType,
      'recipientType': ?recipientType,
      'ruleType': ruleType,
      'target': ?target == null ? null : target!.toMap(),
    };
  }

  factory RoleManagementPolicyNotificationRule.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyNotificationRule(
      id: map['id'] == null ? null : map['id'] as String,
      isDefaultRecipientsEnabled: map['isDefaultRecipientsEnabled'] == null ? null : map['isDefaultRecipientsEnabled'] as bool,
      notificationLevel: map['notificationLevel'] == null ? null : map['notificationLevel'] as String,
      notificationRecipients: map['notificationRecipients'] == null ? null : (map['notificationRecipients'] as List).cast<String>(),
      notificationType: map['notificationType'] == null ? null : map['notificationType'] as String,
      recipientType: map['recipientType'] == null ? null : map['recipientType'] as String,
      ruleType: map['ruleType'] as String,
      target: map['target'] == null ? null : RoleManagementPolicyRuleTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

