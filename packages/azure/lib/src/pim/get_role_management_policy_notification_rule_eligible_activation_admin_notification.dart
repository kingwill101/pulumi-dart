// ignore_for_file: unused_element, unnecessary_cast


class GetRoleManagementPolicyNotificationRuleEligibleActivationAdminNotification {
  /// A list of additional email addresses that will receive these notifications.
  final List<String> additionalRecipients;
  /// (Boolean) Should the default recipients receive these notifications.
  final bool defaultRecipients;
  /// (String) What level of notifications should be sent. Either `All` or `Critical`.
  final String notificationLevel;

  /// Creates a new [GetRoleManagementPolicyNotificationRuleEligibleActivationAdminNotification].
  /// [additionalRecipients] A list of additional email addresses that will receive these notifications.
  /// [defaultRecipients] (Boolean) Should the default recipients receive these notifications.
  /// [notificationLevel] (String) What level of notifications should be sent. Either `All` or `Critical`.
  GetRoleManagementPolicyNotificationRuleEligibleActivationAdminNotification({
    required this.additionalRecipients,
    required this.defaultRecipients,
    required this.notificationLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalRecipients': additionalRecipients,
      'defaultRecipients': defaultRecipients,
      'notificationLevel': notificationLevel,
    };
  }

  factory GetRoleManagementPolicyNotificationRuleEligibleActivationAdminNotification.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyNotificationRuleEligibleActivationAdminNotification(
      additionalRecipients: (map['additionalRecipients'] as List).cast<String>(),
      defaultRecipients: map['defaultRecipients'] as bool,
      notificationLevel: map['notificationLevel'] as String,
    );
  }
}

