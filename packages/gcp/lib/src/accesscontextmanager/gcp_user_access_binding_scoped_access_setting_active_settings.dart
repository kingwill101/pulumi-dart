// ignore_for_file: unused_element, unnecessary_cast

import 'gcp_user_access_binding_scoped_access_setting_active_settings_session_settings.dart';

class GcpUserAccessBindingScopedAccessSettingActiveSettings {
  /// Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  final List<String>? accessLevels;

  /// Optional. Session settings applied to user access on a given AccessScope.
  /// Structure is documented below.
  final GcpUserAccessBindingScopedAccessSettingActiveSettingsSessionSettings?
      sessionSettings;

  /// Creates a new [GcpUserAccessBindingScopedAccessSettingActiveSettings].
  /// [accessLevels] Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  /// [sessionSettings] Optional. Session settings applied to user access on a given AccessScope.
  GcpUserAccessBindingScopedAccessSettingActiveSettings({
    this.accessLevels,
    this.sessionSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessLevelsValue = accessLevels;
    if (accessLevelsValue != null) {
      map['accessLevels'] = accessLevelsValue;
    }
    final sessionSettingsValue = sessionSettings;
    if (sessionSettingsValue != null) {
      map['sessionSettings'] = sessionSettingsValue.toMap();
    }
    return map;
  }

  factory GcpUserAccessBindingScopedAccessSettingActiveSettings.fromMap(
      Map<String, dynamic> map) {
    return GcpUserAccessBindingScopedAccessSettingActiveSettings(
      accessLevels: map['accessLevels'] == null
          ? null
          : (map['accessLevels'] as List).cast<String>(),
      sessionSettings: map['sessionSettings'] == null
          ? null
          : GcpUserAccessBindingScopedAccessSettingActiveSettingsSessionSettings
              .fromMap((map['sessionSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
