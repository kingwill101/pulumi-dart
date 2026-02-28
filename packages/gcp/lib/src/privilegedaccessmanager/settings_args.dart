// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_email_notification_settings.dart';
import 'settings_service_account_approver_settings.dart';

/// {@template pulumi_privilegedaccessmanager_settings_settings_args_doc}
/// The set of arguments for Settings.
/// {@endtemplate}
/// {@macro pulumi_privilegedaccessmanager_settings_settings_args_doc}
class SettingsArgs {
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

  /// Creates a new [SettingsArgs].
  /// [emailNotificationSettings] EmailNotificationSettings defines node-wide email notification preferences for various PAM events.
  /// [location] The region of the PAM settings resource.
  /// [parent] Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  /// [serviceAccountApproverSettings] This controls the node-level settings for allowing service accounts as approvers.
  SettingsArgs({
    SettingsEmailNotificationSettings? emailNotificationSettings,
    required String location,
    required String parent,
    SettingsServiceAccountApproverSettings? serviceAccountApproverSettings,
  })  : emailNotificationSettings =
            pulumi.Input.asOptionalInput<SettingsEmailNotificationSettings>(
                emailNotificationSettings),
        location = pulumi.Input.asInput<String>(location),
        parent = pulumi.Input.asInput<String>(parent),
        serviceAccountApproverSettings = pulumi.Input.asOptionalInput<
                SettingsServiceAccountApproverSettings>(
            serviceAccountApproverSettings);

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

  factory SettingsArgs.fromMap(Map<String, dynamic> map) {
    return SettingsArgs(
      emailNotificationSettings: map['emailNotificationSettings'] == null
          ? null
          : SettingsEmailNotificationSettings.fromMap(
              (map['emailNotificationSettings'] as Map)
                  .cast<String, dynamic>()),
      location: map['location'] as String,
      parent: map['parent'] as String,
      serviceAccountApproverSettings:
          map['serviceAccountApproverSettings'] == null
              ? null
              : SettingsServiceAccountApproverSettings.fromMap(
                  (map['serviceAccountApproverSettings'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}
