// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_space_settings_code_editor_app_settings_app_lifecycle_management_idle_settings.dart';

class SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. See `idle_settings` Block below.
  final pulumi.Input<SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings>? idleSettings;

  /// Creates a new [SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement].
  /// [idleSettings] Settings related to idle shutdown of Studio applications. See `idle_settings` Block below.
  const SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleSettings': ?pulumi.Input.mapOptionalInputValue<SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings, Map<String, dynamic>>(idleSettings, (value) => value.toMap()),
    };
  }

  factory SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement(
      idleSettings: (() { final guardedValue = map['idleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

