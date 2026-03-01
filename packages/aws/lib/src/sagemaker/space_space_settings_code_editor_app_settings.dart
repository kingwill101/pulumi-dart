// ignore_for_file: unused_element, unnecessary_cast

import 'space_space_settings_code_editor_app_settings_app_lifecycle_management.dart';
import 'space_space_settings_code_editor_app_settings_default_resource_spec.dart';

class SpaceSpaceSettingsCodeEditorAppSettings {
  /// Settings that are used to configure and manage the lifecycle of JupyterLab applications in a space. See `app_lifecycle_management` Block below.
  final SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement?
  appLifecycleManagement;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. See `default_resource_spec` Block below.
  final SpaceSpaceSettingsCodeEditorAppSettingsDefaultResourceSpec
  defaultResourceSpec;

  /// Creates a new [SpaceSpaceSettingsCodeEditorAppSettings].
  /// [appLifecycleManagement] Settings that are used to configure and manage the lifecycle of JupyterLab applications in a space. See `app_lifecycle_management` Block below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. See `default_resource_spec` Block below.
  SpaceSpaceSettingsCodeEditorAppSettings({
    this.appLifecycleManagement,
    required this.defaultResourceSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLifecycleManagement': ?appLifecycleManagement == null
          ? null
          : appLifecycleManagement!.toMap(),
      'defaultResourceSpec': defaultResourceSpec.toMap(),
    };
  }

  factory SpaceSpaceSettingsCodeEditorAppSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpaceSpaceSettingsCodeEditorAppSettings(
      appLifecycleManagement: map['appLifecycleManagement'] == null
          ? null
          : SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement.fromMap(
              (map['appLifecycleManagement'] as Map).cast<String, dynamic>(),
            ),
      defaultResourceSpec:
          SpaceSpaceSettingsCodeEditorAppSettingsDefaultResourceSpec.fromMap(
            (map['defaultResourceSpec'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
