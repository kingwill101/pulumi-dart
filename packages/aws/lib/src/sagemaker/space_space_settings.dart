// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_space_settings_code_editor_app_settings.dart';
import 'space_space_settings_custom_file_system.dart';
import 'space_space_settings_jupyter_lab_app_settings.dart';
import 'space_space_settings_jupyter_server_app_settings.dart';
import 'space_space_settings_kernel_gateway_app_settings.dart';
import 'space_space_settings_space_storage_settings.dart';

class SpaceSpaceSettings {
  /// The type of app created within the space.
  final String? appType;

  /// The Code Editor application settings. See `code_editor_app_settings` Block below.
  final SpaceSpaceSettingsCodeEditorAppSettings? codeEditorAppSettings;

  /// A file system, created by you, that you assign to a space for an Amazon SageMaker AI Domain. See `custom_file_system` Block below.
  final List<SpaceSpaceSettingsCustomFileSystem>? customFileSystems;

  /// The settings for the JupyterLab application. See `jupyter_lab_app_settings` Block below.
  final SpaceSpaceSettingsJupyterLabAppSettings? jupyterLabAppSettings;

  /// The Jupyter server's app settings. See `jupyter_server_app_settings` Block below.
  final SpaceSpaceSettingsJupyterServerAppSettings? jupyterServerAppSettings;

  /// The kernel gateway app settings. See `kernel_gateway_app_settings` Block below.
  final SpaceSpaceSettingsKernelGatewayAppSettings? kernelGatewayAppSettings;

  /// The storage settings. See `space_storage_settings` Block below.
  final SpaceSpaceSettingsSpaceStorageSettings? spaceStorageSettings;

  /// Creates a new [SpaceSpaceSettings].
  /// [appType] The type of app created within the space.
  /// [codeEditorAppSettings] The Code Editor application settings. See `code_editor_app_settings` Block below.
  /// [customFileSystems] A file system, created by you, that you assign to a space for an Amazon SageMaker AI Domain. See `custom_file_system` Block below.
  /// [jupyterLabAppSettings] The settings for the JupyterLab application. See `jupyter_lab_app_settings` Block below.
  /// [jupyterServerAppSettings] The Jupyter server's app settings. See `jupyter_server_app_settings` Block below.
  /// [kernelGatewayAppSettings] The kernel gateway app settings. See `kernel_gateway_app_settings` Block below.
  /// [spaceStorageSettings] The storage settings. See `space_storage_settings` Block below.
  SpaceSpaceSettings({
    this.appType,
    this.codeEditorAppSettings,
    this.customFileSystems,
    this.jupyterLabAppSettings,
    this.jupyterServerAppSettings,
    this.kernelGatewayAppSettings,
    this.spaceStorageSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appTypeValue = appType;
    if (appTypeValue != null) {
      map['appType'] = appTypeValue;
    }
    final codeEditorAppSettingsValue = codeEditorAppSettings;
    if (codeEditorAppSettingsValue != null) {
      map['codeEditorAppSettings'] = codeEditorAppSettingsValue.toMap();
    }
    final customFileSystemsValue = customFileSystems;
    if (customFileSystemsValue != null) {
      map['customFileSystems'] = pulumi.Input.encodeList<
              SpaceSpaceSettingsCustomFileSystem, Map<String, dynamic>>(
          customFileSystemsValue, (value) => value.toMap());
    }
    final jupyterLabAppSettingsValue = jupyterLabAppSettings;
    if (jupyterLabAppSettingsValue != null) {
      map['jupyterLabAppSettings'] = jupyterLabAppSettingsValue.toMap();
    }
    final jupyterServerAppSettingsValue = jupyterServerAppSettings;
    if (jupyterServerAppSettingsValue != null) {
      map['jupyterServerAppSettings'] = jupyterServerAppSettingsValue.toMap();
    }
    final kernelGatewayAppSettingsValue = kernelGatewayAppSettings;
    if (kernelGatewayAppSettingsValue != null) {
      map['kernelGatewayAppSettings'] = kernelGatewayAppSettingsValue.toMap();
    }
    final spaceStorageSettingsValue = spaceStorageSettings;
    if (spaceStorageSettingsValue != null) {
      map['spaceStorageSettings'] = spaceStorageSettingsValue.toMap();
    }
    return map;
  }

  factory SpaceSpaceSettings.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettings(
      appType: map['appType'] == null ? null : map['appType'] as String,
      codeEditorAppSettings: map['codeEditorAppSettings'] == null
          ? null
          : SpaceSpaceSettingsCodeEditorAppSettings.fromMap(
              (map['codeEditorAppSettings'] as Map).cast<String, dynamic>()),
      customFileSystems: map['customFileSystems'] == null
          ? null
          : pulumi.Input.decodeList<SpaceSpaceSettingsCustomFileSystem>(
              map['customFileSystems'],
              (value) => SpaceSpaceSettingsCustomFileSystem.fromMap(
                  (value as Map).cast<String, dynamic>())),
      jupyterLabAppSettings: map['jupyterLabAppSettings'] == null
          ? null
          : SpaceSpaceSettingsJupyterLabAppSettings.fromMap(
              (map['jupyterLabAppSettings'] as Map).cast<String, dynamic>()),
      jupyterServerAppSettings: map['jupyterServerAppSettings'] == null
          ? null
          : SpaceSpaceSettingsJupyterServerAppSettings.fromMap(
              (map['jupyterServerAppSettings'] as Map).cast<String, dynamic>()),
      kernelGatewayAppSettings: map['kernelGatewayAppSettings'] == null
          ? null
          : SpaceSpaceSettingsKernelGatewayAppSettings.fromMap(
              (map['kernelGatewayAppSettings'] as Map).cast<String, dynamic>()),
      spaceStorageSettings: map['spaceStorageSettings'] == null
          ? null
          : SpaceSpaceSettingsSpaceStorageSettings.fromMap(
              (map['spaceStorageSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
