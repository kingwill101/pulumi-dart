// ignore_for_file: unused_element, unnecessary_cast

import '../space_space_settings_code_editor_app_settings_app_lifecycle_management/space_space_settings_code_editor_app_settings_app_lifecycle_management.dart';
import '../space_space_settings_code_editor_app_settings_default_resource_spec/space_space_settings_code_editor_app_settings_default_resource_spec.dart';

class SpaceSpaceSettingsCodeEditorAppSettings {
  /// Settings that are used to configure and manage the lifecycle of JupyterLab applications in a space. See `app_lifecycle_management` Block below.
  final SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement?
      appLifecycleManagement;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. See `default_resource_spec` Block below.
  final SpaceSpaceSettingsCodeEditorAppSettingsDefaultResourceSpec
      defaultResourceSpec;

  SpaceSpaceSettingsCodeEditorAppSettings({
    this.appLifecycleManagement,
    required this.defaultResourceSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appLifecycleManagementValue = appLifecycleManagement;
    if (appLifecycleManagementValue != null) {
      map['appLifecycleManagement'] = appLifecycleManagementValue.toMap();
    }
    map['defaultResourceSpec'] = defaultResourceSpec.toMap();
    return map;
  }

  factory SpaceSpaceSettingsCodeEditorAppSettings.fromMap(
      Map<String, dynamic> map) {
    return SpaceSpaceSettingsCodeEditorAppSettings(
      appLifecycleManagement: map['appLifecycleManagement'] == null
          ? null
          : SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement
              .fromMap((map['appLifecycleManagement'] as Map)
                  .cast<String, dynamic>()),
      defaultResourceSpec:
          SpaceSpaceSettingsCodeEditorAppSettingsDefaultResourceSpec.fromMap(
              (map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
