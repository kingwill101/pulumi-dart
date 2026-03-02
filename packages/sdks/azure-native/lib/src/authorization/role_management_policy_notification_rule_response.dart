// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_rule_target_response.dart';

/// The role management policy notification rule.
class RoleManagementPolicyNotificationRuleResponse {
  /// The id of the rule.
  final pulumi.Input<String>? id;
  /// Determines if the notification will be sent to the recipient type specified in the policy rule.
  final pulumi.Input<bool>? isDefaultRecipientsEnabled;
  /// The notification level.
  final pulumi.Input<String>? notificationLevel;
  /// The list of notification recipients.
  final pulumi.Input<List<String>>? notificationRecipients;
  /// The type of notification.
  final pulumi.Input<String>? notificationType;
  /// The recipient type.
  final pulumi.Input<String>? recipientType;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyNotificationRule'.
  final pulumi.Input<String> ruleType;
  /// The target of the current rule.
  final pulumi.Input<RoleManagementPolicyRuleTargetResponse>? target;

  /// Creates a new [RoleManagementPolicyNotificationRuleResponse].
  /// [id] The id of the rule.
  /// [isDefaultRecipientsEnabled] Determines if the notification will be sent to the recipient type specified in the policy rule.
  /// [notificationLevel] The notification level.
  /// [notificationRecipients] The list of notification recipients.
  /// [notificationType] The type of notification.
  /// [recipientType] The recipient type.
  /// [ruleType] The type of rule
  /// [target] The target of the current rule.
  RoleManagementPolicyNotificationRuleResponse({
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
      'target': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyRuleTargetResponse, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory RoleManagementPolicyNotificationRuleResponse.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyNotificationRuleResponse(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      isDefaultRecipientsEnabled: map['isDefaultRecipientsEnabled'] == null ? null : (map['isDefaultRecipientsEnabled'] as bool).input(),
      notificationLevel: map['notificationLevel'] == null ? null : (map['notificationLevel'] as String).input(),
      notificationRecipients: map['notificationRecipients'] == null ? null : ((map['notificationRecipients'] as List).cast<String>()).input(),
      notificationType: map['notificationType'] == null ? null : (map['notificationType'] as String).input(),
      recipientType: map['recipientType'] == null ? null : (map['recipientType'] as String).input(),
      ruleType: (map['ruleType'] as String).input(),
      target: map['target'] == null ? null : (RoleManagementPolicyRuleTargetResponse.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

