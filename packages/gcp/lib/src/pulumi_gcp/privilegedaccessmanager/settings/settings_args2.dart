// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../settings_email_notification_settings/settings_email_notification_settings.dart';
import '../settings_service_account_approver_settings/settings_service_account_approver_settings.dart';

/// The set of arguments for Settings.
class SettingsArgs2 {
  /// EmailNotificationSettings defines node-wide email notification preferences for various PAM events.
  /// Structure is documented below.
  final Input<SettingsEmailNotificationSettings>? emailNotificationSettings;

  /// The region of the PAM settings resource.
  final Input<String> location;

  /// Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  final Input<String> parent;

  /// This controls the node-level settings for allowing service accounts as approvers.
  /// Structure is documented below.
  final Input<SettingsServiceAccountApproverSettings>?
      serviceAccountApproverSettings;

  SettingsArgs2({
    this.emailNotificationSettings,
    required this.location,
    required this.parent,
    this.serviceAccountApproverSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailNotificationSettingsValue = emailNotificationSettings;
    if (emailNotificationSettingsValue != null) {
      map['emailNotificationSettings'] = Input.mapOptionalInputValue<
              SettingsEmailNotificationSettings, Map<String, dynamic>>(
          emailNotificationSettingsValue, (value) => value.toMap());
    }
    map['location'] = location;
    map['parent'] = parent;
    final serviceAccountApproverSettingsValue = serviceAccountApproverSettings;
    if (serviceAccountApproverSettingsValue != null) {
      map['serviceAccountApproverSettings'] = Input.mapOptionalInputValue<
              SettingsServiceAccountApproverSettings, Map<String, dynamic>>(
          serviceAccountApproverSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SettingsArgs2.fromMap(Map<String, dynamic> map) {
    return SettingsArgs2(
      emailNotificationSettings:
          Input.asOptionalInput<SettingsEmailNotificationSettings>(
              map['emailNotificationSettings']),
      location: Input.asInput<String>(map['location']),
      parent: Input.asInput<String>(map['parent']),
      serviceAccountApproverSettings:
          Input.asOptionalInput<SettingsServiceAccountApproverSettings>(
              map['serviceAccountApproverSettings']),
    );
  }
}
