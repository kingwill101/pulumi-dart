// ignore_for_file: unused_element, unnecessary_cast

import '../settings_email_notification_settings_custom_notification_behavior_admin_notifications/settings_email_notification_settings_custom_notification_behavior_admin_notifications.dart';
import '../settings_email_notification_settings_custom_notification_behavior_approver_notifications/settings_email_notification_settings_custom_notification_behavior_approver_notifications.dart';
import '../settings_email_notification_settings_custom_notification_behavior_requester_notifications/settings_email_notification_settings_custom_notification_behavior_requester_notifications.dart';

class SettingsEmailNotificationSettingsCustomNotificationBehavior {
  /// Email notifications specific to Requesters.
  /// Structure is documented below.
  final SettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotifications?
      adminNotifications;

  /// Email notifications specific to Approvers.
  /// Structure is documented below.
  final SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications?
      approverNotifications;

  /// Email notifications specific to Requesters.
  /// Structure is documented below.
  final SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications?
      requesterNotifications;

  SettingsEmailNotificationSettingsCustomNotificationBehavior({
    this.adminNotifications,
    this.approverNotifications,
    this.requesterNotifications,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminNotificationsValue = adminNotifications;
    if (adminNotificationsValue != null) {
      map['adminNotifications'] = adminNotificationsValue.toMap();
    }
    final approverNotificationsValue = approverNotifications;
    if (approverNotificationsValue != null) {
      map['approverNotifications'] = approverNotificationsValue.toMap();
    }
    final requesterNotificationsValue = requesterNotifications;
    if (requesterNotificationsValue != null) {
      map['requesterNotifications'] = requesterNotificationsValue.toMap();
    }
    return map;
  }

  factory SettingsEmailNotificationSettingsCustomNotificationBehavior.fromMap(
      Map<String, dynamic> map) {
    return SettingsEmailNotificationSettingsCustomNotificationBehavior(
      adminNotifications: map['adminNotifications'] == null
          ? null
          : SettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotifications
              .fromMap(
                  (map['adminNotifications'] as Map).cast<String, dynamic>()),
      approverNotifications: map['approverNotifications'] == null
          ? null
          : SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications
              .fromMap((map['approverNotifications'] as Map)
                  .cast<String, dynamic>()),
      requesterNotifications: map['requesterNotifications'] == null
          ? null
          : SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications
              .fromMap((map['requesterNotifications'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
