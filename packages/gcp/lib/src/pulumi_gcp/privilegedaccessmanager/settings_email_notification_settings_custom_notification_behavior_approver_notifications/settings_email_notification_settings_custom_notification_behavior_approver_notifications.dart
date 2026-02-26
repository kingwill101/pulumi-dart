// ignore_for_file: unused_element, unnecessary_cast

class SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications {
  /// Notification mode for pending approval.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final String? pendingApproval;

  SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications({
    this.pendingApproval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pendingApprovalValue = pendingApproval;
    if (pendingApprovalValue != null) {
      map['pendingApproval'] = pendingApprovalValue;
    }
    return map;
  }

  factory SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications.fromMap(
      Map<String, dynamic> map) {
    return SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications(
      pendingApproval: map['pendingApproval'] == null
          ? null
          : map['pendingApproval'] as String,
    );
  }
}
