// ignore_for_file: unused_element, unnecessary_cast

import '../space_space_settings_jupyter_lab_app_settings_app_lifecycle_management_idle_settings/space_space_settings_jupyter_lab_app_settings_app_lifecycle_management_idle_settings.dart';

class SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. See `idle_settings` Block below.
  final SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings?
      idleSettings;

  SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idleSettingsValue = idleSettings;
    if (idleSettingsValue != null) {
      map['idleSettings'] = idleSettingsValue.toMap();
    }
    return map;
  }

  factory SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement.fromMap(
      Map<String, dynamic> map) {
    return SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement(
      idleSettings: map['idleSettings'] == null
          ? null
          : SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings
              .fromMap((map['idleSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
