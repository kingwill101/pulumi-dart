// ignore_for_file: unused_element, unnecessary_cast

import 'space_space_settings_jupyter_lab_app_settings_app_lifecycle_management_idle_settings.dart';

class SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. See `idle_settings` Block below.
  final SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings?
  idleSettings;

  /// Creates a new [SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement].
  /// [idleSettings] Settings related to idle shutdown of Studio applications. See `idle_settings` Block below.
  SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleSettings': ?idleSettings == null ? null : idleSettings!.toMap(),
    };
  }

  factory SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement(
      idleSettings: map['idleSettings'] == null
          ? null
          : SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings.fromMap(
              (map['idleSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
