// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_space_settings_custom_file_system_config.dart';
import 'domain_default_space_settings_custom_posix_user_config.dart';
import 'domain_default_space_settings_jupyter_lab_app_settings.dart';
import 'domain_default_space_settings_jupyter_server_app_settings.dart';
import 'domain_default_space_settings_kernel_gateway_app_settings.dart';
import 'domain_default_space_settings_space_storage_settings.dart';

class DomainDefaultSpaceSettings {
  /// The settings for assigning a custom file system to a user profile. Permitted users can access this file system in Amazon SageMaker AI Studio. See `custom_file_system_config` Block below.
  final List<DomainDefaultSpaceSettingsCustomFileSystemConfig>?
      customFileSystemConfigs;

  /// Details about the POSIX identity that is used for file system operations. See `custom_posix_user_config` Block below.
  final DomainDefaultSpaceSettingsCustomPosixUserConfig? customPosixUserConfig;

  /// The execution role for the space.
  final String executionRole;

  /// The settings for the JupyterLab application. See `jupyter_lab_app_settings` Block below.
  final DomainDefaultSpaceSettingsJupyterLabAppSettings? jupyterLabAppSettings;

  /// The Jupyter server's app settings. See `jupyter_server_app_settings` Block below.
  final DomainDefaultSpaceSettingsJupyterServerAppSettings?
      jupyterServerAppSettings;

  /// The kernel gateway app settings. See `kernel_gateway_app_settings` Block below.
  final DomainDefaultSpaceSettingsKernelGatewayAppSettings?
      kernelGatewayAppSettings;

  /// The security groups for the Amazon Virtual Private Cloud that the space uses for communication.
  final List<String>? securityGroups;

  /// The storage settings for a private space. See `space_storage_settings` Block below.
  final DomainDefaultSpaceSettingsSpaceStorageSettings? spaceStorageSettings;

  /// Creates a new [DomainDefaultSpaceSettings].
  /// [customFileSystemConfigs] The settings for assigning a custom file system to a user profile. Permitted users can access this file system in Amazon SageMaker AI Studio. See `custom_file_system_config` Block below.
  /// [customPosixUserConfig] Details about the POSIX identity that is used for file system operations. See `custom_posix_user_config` Block below.
  /// [executionRole] The execution role for the space.
  /// [jupyterLabAppSettings] The settings for the JupyterLab application. See `jupyter_lab_app_settings` Block below.
  /// [jupyterServerAppSettings] The Jupyter server's app settings. See `jupyter_server_app_settings` Block below.
  /// [kernelGatewayAppSettings] The kernel gateway app settings. See `kernel_gateway_app_settings` Block below.
  /// [securityGroups] The security groups for the Amazon Virtual Private Cloud that the space uses for communication.
  /// [spaceStorageSettings] The storage settings for a private space. See `space_storage_settings` Block below.
  DomainDefaultSpaceSettings({
    this.customFileSystemConfigs,
    this.customPosixUserConfig,
    required this.executionRole,
    this.jupyterLabAppSettings,
    this.jupyterServerAppSettings,
    this.kernelGatewayAppSettings,
    this.securityGroups,
    this.spaceStorageSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customFileSystemConfigsValue = customFileSystemConfigs;
    if (customFileSystemConfigsValue != null) {
      map['customFileSystemConfigs'] = pulumi.Input.encodeList<
              DomainDefaultSpaceSettingsCustomFileSystemConfig,
              Map<String, dynamic>>(
          customFileSystemConfigsValue, (value) => value.toMap());
    }
    final customPosixUserConfigValue = customPosixUserConfig;
    if (customPosixUserConfigValue != null) {
      map['customPosixUserConfig'] = customPosixUserConfigValue.toMap();
    }
    map['executionRole'] = executionRole;
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
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    final spaceStorageSettingsValue = spaceStorageSettings;
    if (spaceStorageSettingsValue != null) {
      map['spaceStorageSettings'] = spaceStorageSettingsValue.toMap();
    }
    return map;
  }

  factory DomainDefaultSpaceSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultSpaceSettings(
      customFileSystemConfigs: map['customFileSystemConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  DomainDefaultSpaceSettingsCustomFileSystemConfig>(
              map['customFileSystemConfigs'],
              (value) =>
                  DomainDefaultSpaceSettingsCustomFileSystemConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      customPosixUserConfig: map['customPosixUserConfig'] == null
          ? null
          : DomainDefaultSpaceSettingsCustomPosixUserConfig.fromMap(
              (map['customPosixUserConfig'] as Map).cast<String, dynamic>()),
      executionRole: map['executionRole'] as String,
      jupyterLabAppSettings: map['jupyterLabAppSettings'] == null
          ? null
          : DomainDefaultSpaceSettingsJupyterLabAppSettings.fromMap(
              (map['jupyterLabAppSettings'] as Map).cast<String, dynamic>()),
      jupyterServerAppSettings: map['jupyterServerAppSettings'] == null
          ? null
          : DomainDefaultSpaceSettingsJupyterServerAppSettings.fromMap(
              (map['jupyterServerAppSettings'] as Map).cast<String, dynamic>()),
      kernelGatewayAppSettings: map['kernelGatewayAppSettings'] == null
          ? null
          : DomainDefaultSpaceSettingsKernelGatewayAppSettings.fromMap(
              (map['kernelGatewayAppSettings'] as Map).cast<String, dynamic>()),
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      spaceStorageSettings: map['spaceStorageSettings'] == null
          ? null
          : DomainDefaultSpaceSettingsSpaceStorageSettings.fromMap(
              (map['spaceStorageSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
