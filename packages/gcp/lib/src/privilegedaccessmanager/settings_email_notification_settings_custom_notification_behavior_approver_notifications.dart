// ignore_for_file: unused_element, unnecessary_cast

class SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications {
  /// Notification mode for pending approval.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final String? pendingApproval;

  /// Creates a new [SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications].
  /// [pendingApproval] Notification mode for pending approval.
  SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications({
    this.pendingApproval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pendingApproval': ?pendingApproval};
  }

  factory SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications.fromMap(
    Map<String, dynamic> map,
  ) {
    return SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications(
      pendingApproval: map['pendingApproval'] == null
          ? null
          : map['pendingApproval'] as String,
    );
  }
}
