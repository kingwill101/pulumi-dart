// ignore_for_file: unused_element, unnecessary_cast

import 'gcp_user_access_binding_scoped_access_setting_active_settings.dart';
import 'gcp_user_access_binding_scoped_access_setting_dry_run_settings.dart';
import 'gcp_user_access_binding_scoped_access_setting_scope.dart';

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

  /// Creates a new [GcpUserAccessBindingScopedAccessSetting].
  /// [activeSettings] Optional. Access settings for this scoped access settings. This field may be empty if dryRunSettings is set.
  /// [dryRunSettings] Optional. Dry-run access settings for this scoped access settings. This field may be empty if activeSettings is set. Cannot contain session settings.
  /// [scope] Optional. Application, etc. to which the access settings will be applied to. Implicitly, this is the scoped access settings key; as such, it must be unique and non-empty.
  GcpUserAccessBindingScopedAccessSetting({
    this.activeSettings,
    this.dryRunSettings,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeSettings': ?activeSettings == null
          ? null
          : activeSettings!.toMap(),
      'dryRunSettings': ?dryRunSettings == null
          ? null
          : dryRunSettings!.toMap(),
      'scope': ?scope == null ? null : scope!.toMap(),
    };
  }

  factory GcpUserAccessBindingScopedAccessSetting.fromMap(
    Map<String, dynamic> map,
  ) {
    return GcpUserAccessBindingScopedAccessSetting(
      activeSettings: map['activeSettings'] == null
          ? null
          : GcpUserAccessBindingScopedAccessSettingActiveSettings.fromMap(
              (map['activeSettings'] as Map).cast<String, dynamic>(),
            ),
      dryRunSettings: map['dryRunSettings'] == null
          ? null
          : GcpUserAccessBindingScopedAccessSettingDryRunSettings.fromMap(
              (map['dryRunSettings'] as Map).cast<String, dynamic>(),
            ),
      scope: map['scope'] == null
          ? null
          : GcpUserAccessBindingScopedAccessSettingScope.fromMap(
              (map['scope'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
