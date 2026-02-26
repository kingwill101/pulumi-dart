// ignore_for_file: unused_element, unnecessary_cast

import '../space_space_settings_code_editor_app_settings_app_lifecycle_management_idle_settings/space_space_settings_code_editor_app_settings_app_lifecycle_management_idle_settings.dart';

class SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. See <span pulumi-lang-nodejs="`idleSettings`" pulumi-lang-dotnet="`IdleSettings`" pulumi-lang-go="`idleSettings`" pulumi-lang-python="`idle_settings`" pulumi-lang-yaml="`idleSettings`" pulumi-lang-java="`idleSettings`">`idle_settings`</span> Block below.
  final SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings?
      idleSettings;

  SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement({
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

  factory SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement.fromMap(
      Map<String, dynamic> map) {
    return SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement(
      idleSettings: map['idleSettings'] == null
          ? null
          : SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings
              .fromMap((map['idleSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
