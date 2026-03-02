// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_space_settings_jupyter_lab_app_settings_app_lifecycle_management_idle_settings.dart';

class SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. See `idle_settings` Block below.
  final pulumi.Input<SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings>? idleSettings;

  /// Creates a new [SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement].
  /// [idleSettings] Settings related to idle shutdown of Studio applications. See `idle_settings` Block below.
  SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleSettings': ?pulumi.Input.mapOptionalInputValue<SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings, Map<String, dynamic>>(idleSettings, (value) => value.toMap()),
    };
  }

  factory SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement(
      idleSettings: map['idleSettings'] == null ? null : (SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings.fromMap((map['idleSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

