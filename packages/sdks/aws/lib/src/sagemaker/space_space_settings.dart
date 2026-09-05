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
  final pulumi.Input<String?>? appType;
  /// The Code Editor application settings. See `codeEditorAppSettings` Block below.
  final pulumi.Input<SpaceSpaceSettingsCodeEditorAppSettings?>? codeEditorAppSettings;
  /// A file system, created by you, that you assign to a space for an Amazon SageMaker AI Domain. See `customFileSystem` Block below.
  final pulumi.Input<List<SpaceSpaceSettingsCustomFileSystem>?>? customFileSystems;
  /// The settings for the JupyterLab application. See `jupyterLabAppSettings` Block below.
  final pulumi.Input<SpaceSpaceSettingsJupyterLabAppSettings?>? jupyterLabAppSettings;
  /// The Jupyter server's app settings. See `jupyterServerAppSettings` Block below.
  final pulumi.Input<SpaceSpaceSettingsJupyterServerAppSettings?>? jupyterServerAppSettings;
  /// The kernel gateway app settings. See `kernelGatewayAppSettings` Block below.
  final pulumi.Input<SpaceSpaceSettingsKernelGatewayAppSettings?>? kernelGatewayAppSettings;
  /// The storage settings. See `spaceStorageSettings` Block below.
  final pulumi.Input<SpaceSpaceSettingsSpaceStorageSettings?>? spaceStorageSettings;

  /// Creates a new [SpaceSpaceSettings].
  /// [appType] The type of app created within the space.
  /// [codeEditorAppSettings] The Code Editor application settings. See `codeEditorAppSettings` Block below.
  /// [customFileSystems] A file system, created by you, that you assign to a space for an Amazon SageMaker AI Domain. See `customFileSystem` Block below.
  /// [jupyterLabAppSettings] The settings for the JupyterLab application. See `jupyterLabAppSettings` Block below.
  /// [jupyterServerAppSettings] The Jupyter server's app settings. See `jupyterServerAppSettings` Block below.
  /// [kernelGatewayAppSettings] The kernel gateway app settings. See `kernelGatewayAppSettings` Block below.
  /// [spaceStorageSettings] The storage settings. See `spaceStorageSettings` Block below.
  const SpaceSpaceSettings({
    this.appType,
    this.codeEditorAppSettings,
    this.customFileSystems,
    this.jupyterLabAppSettings,
    this.jupyterServerAppSettings,
    this.kernelGatewayAppSettings,
    this.spaceStorageSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appType': ?appType,
      'codeEditorAppSettings': ?pulumi.Input.mapOptionalInputValue<SpaceSpaceSettingsCodeEditorAppSettings, Map<String, dynamic>>(codeEditorAppSettings, (value) => value.toMap()),
      'customFileSystems': ?pulumi.Input.mapOptionalInputValue<List<SpaceSpaceSettingsCustomFileSystem>, List<Map<String, dynamic>>>(customFileSystems, (value) => pulumi.Input.encodeList<SpaceSpaceSettingsCustomFileSystem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jupyterLabAppSettings': ?pulumi.Input.mapOptionalInputValue<SpaceSpaceSettingsJupyterLabAppSettings, Map<String, dynamic>>(jupyterLabAppSettings, (value) => value.toMap()),
      'jupyterServerAppSettings': ?pulumi.Input.mapOptionalInputValue<SpaceSpaceSettingsJupyterServerAppSettings, Map<String, dynamic>>(jupyterServerAppSettings, (value) => value.toMap()),
      'kernelGatewayAppSettings': ?pulumi.Input.mapOptionalInputValue<SpaceSpaceSettingsKernelGatewayAppSettings, Map<String, dynamic>>(kernelGatewayAppSettings, (value) => value.toMap()),
      'spaceStorageSettings': ?pulumi.Input.mapOptionalInputValue<SpaceSpaceSettingsSpaceStorageSettings, Map<String, dynamic>>(spaceStorageSettings, (value) => value.toMap()),
    };
  }

  factory SpaceSpaceSettings.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettings(
      appType: (() { final guardedValue = map['appType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codeEditorAppSettings: (() { final guardedValue = map['codeEditorAppSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpaceSpaceSettingsCodeEditorAppSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customFileSystems: (() { final guardedValue = map['customFileSystems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpaceSpaceSettingsCustomFileSystem>(guardedValue, (value) => SpaceSpaceSettingsCustomFileSystem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      jupyterLabAppSettings: (() { final guardedValue = map['jupyterLabAppSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpaceSpaceSettingsJupyterLabAppSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jupyterServerAppSettings: (() { final guardedValue = map['jupyterServerAppSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpaceSpaceSettingsJupyterServerAppSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kernelGatewayAppSettings: (() { final guardedValue = map['kernelGatewayAppSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpaceSpaceSettingsKernelGatewayAppSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spaceStorageSettings: (() { final guardedValue = map['spaceStorageSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpaceSpaceSettingsSpaceStorageSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
