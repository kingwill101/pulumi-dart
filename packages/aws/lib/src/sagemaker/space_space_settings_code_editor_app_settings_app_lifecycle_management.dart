// ignore_for_file: unused_element, unnecessary_cast

import 'space_space_settings_code_editor_app_settings_app_lifecycle_management_idle_settings.dart';

class SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. See `idle_settings` Block below.
  final SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings? idleSettings;

  /// Creates a new [SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement].
  /// [idleSettings] Settings related to idle shutdown of Studio applications. See `idle_settings` Block below.
  SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleSettings': ?idleSettings == null ? null : idleSettings!.toMap(),
    };
  }

  factory SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement(
      idleSettings: map['idleSettings'] == null ? null : SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings.fromMap((map['idleSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

