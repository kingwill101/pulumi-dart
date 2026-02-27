// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../settings_email_notification_settings/settings_email_notification_settings.dart';
import '../settings_service_account_approver_settings/settings_service_account_approver_settings.dart';

/// The set of arguments for Settings.
class SettingsPrivilegedaccessmanagerArgs {
  /// EmailNotificationSettings defines node-wide email notification preferences for various PAM events.
  /// Structure is documented below.
  final pulumi.Input<SettingsEmailNotificationSettings>?
      emailNotificationSettings;

  /// The region of the PAM settings resource.
  final pulumi.Input<String> location;

  /// Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  final pulumi.Input<String> parent;

  /// This controls the node-level settings for allowing service accounts as approvers.
  /// Structure is documented below.
  final pulumi.Input<SettingsServiceAccountApproverSettings>?
      serviceAccountApproverSettings;

  SettingsPrivilegedaccessmanagerArgs({
    this.emailNotificationSettings,
    required this.location,
    required this.parent,
    this.serviceAccountApproverSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailNotificationSettingsValue = emailNotificationSettings;
    if (emailNotificationSettingsValue != null) {
      map['emailNotificationSettings'] = pulumi.Input.mapOptionalInputValue<
              SettingsEmailNotificationSettings, Map<String, dynamic>>(
          emailNotificationSettingsValue, (value) => value.toMap());
    }
    map['location'] = location;
    map['parent'] = parent;
    final serviceAccountApproverSettingsValue = serviceAccountApproverSettings;
    if (serviceAccountApproverSettingsValue != null) {
      map['serviceAccountApproverSettings'] =
          pulumi.Input.mapOptionalInputValue<
                  SettingsServiceAccountApproverSettings, Map<String, dynamic>>(
              serviceAccountApproverSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SettingsPrivilegedaccessmanagerArgs.fromMap(
      Map<String, dynamic> map) {
    return SettingsPrivilegedaccessmanagerArgs(
      emailNotificationSettings:
          pulumi.Input.asOptionalInput<SettingsEmailNotificationSettings>(
              map['emailNotificationSettings']),
      location: pulumi.Input.asInput<String>(map['location']),
      parent: pulumi.Input.asInput<String>(map['parent']),
      serviceAccountApproverSettings:
          pulumi.Input.asOptionalInput<SettingsServiceAccountApproverSettings>(
              map['serviceAccountApproverSettings']),
    );
  }
}
