// ignore_for_file: unused_element, unnecessary_cast

import '../gcp_user_access_binding_scoped_access_setting_active_settings/gcp_user_access_binding_scoped_access_setting_active_settings.dart';
import '../gcp_user_access_binding_scoped_access_setting_dry_run_settings/gcp_user_access_binding_scoped_access_setting_dry_run_settings.dart';
import '../gcp_user_access_binding_scoped_access_setting_scope/gcp_user_access_binding_scoped_access_setting_scope.dart';

class GcpUserAccessBindingScopedAccessSetting {
  /// Optional. Access settings for this scoped access settings. This field may be empty if dryRunSettings is set.
  /// Structure is documented below.
  final GcpUserAccessBindingScopedAccessSettingActiveSettings? activeSettings;

  /// Optional. Dry-run access settings for this scoped access settings. This field may be empty if activeSettings is set. Cannot contain session settings.
  /// Structure is documented below.
  final GcpUserAccessBindingScopedAccessSettingDryRunSettings? dryRunSettings;

  /// Optional. Application, etc. to which the access settings will be applied to. Implicitly, this is the scoped access settings key; as such, it must be unique and non-empty.
  /// Structure is documented below.
  final GcpUserAccessBindingScopedAccessSettingScope? scope;

  GcpUserAccessBindingScopedAccessSetting({
    this.activeSettings,
    this.dryRunSettings,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeSettingsValue = activeSettings;
    if (activeSettingsValue != null) {
      map['activeSettings'] = activeSettingsValue.toMap();
    }
    final dryRunSettingsValue = dryRunSettings;
    if (dryRunSettingsValue != null) {
      map['dryRunSettings'] = dryRunSettingsValue.toMap();
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue.toMap();
    }
    return map;
  }

  factory GcpUserAccessBindingScopedAccessSetting.fromMap(
      Map<String, dynamic> map) {
    return GcpUserAccessBindingScopedAccessSetting(
      activeSettings: map['activeSettings'] == null
          ? null
          : GcpUserAccessBindingScopedAccessSettingActiveSettings.fromMap(
              (map['activeSettings'] as Map).cast<String, dynamic>()),
      dryRunSettings: map['dryRunSettings'] == null
          ? null
          : GcpUserAccessBindingScopedAccessSettingDryRunSettings.fromMap(
              (map['dryRunSettings'] as Map).cast<String, dynamic>()),
      scope: map['scope'] == null
          ? null
          : GcpUserAccessBindingScopedAccessSettingScope.fromMap(
              (map['scope'] as Map).cast<String, dynamic>()),
    );
  }
}
