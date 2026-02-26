// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_default_space_settings_custom_file_system_config/domain_default_space_settings_custom_file_system_config.dart';
import '../domain_default_space_settings_custom_posix_user_config/domain_default_space_settings_custom_posix_user_config.dart';
import '../domain_default_space_settings_jupyter_lab_app_settings/domain_default_space_settings_jupyter_lab_app_settings.dart';
import '../domain_default_space_settings_jupyter_server_app_settings/domain_default_space_settings_jupyter_server_app_settings.dart';
import '../domain_default_space_settings_kernel_gateway_app_settings/domain_default_space_settings_kernel_gateway_app_settings.dart';
import '../domain_default_space_settings_space_storage_settings/domain_default_space_settings_space_storage_settings.dart';

class DomainDefaultSpaceSettings {
  /// The settings for assigning a custom file system to a user profile. Permitted users can access this file system in Amazon SageMaker AI Studio. See <span pulumi-lang-nodejs="`customFileSystemConfig`" pulumi-lang-dotnet="`CustomFileSystemConfig`" pulumi-lang-go="`customFileSystemConfig`" pulumi-lang-python="`custom_file_system_config`" pulumi-lang-yaml="`customFileSystemConfig`" pulumi-lang-java="`customFileSystemConfig`">`custom_file_system_config`</span> Block below.
  final List<DomainDefaultSpaceSettingsCustomFileSystemConfig>?
      customFileSystemConfigs;

  /// Details about the POSIX identity that is used for file system operations. See <span pulumi-lang-nodejs="`customPosixUserConfig`" pulumi-lang-dotnet="`CustomPosixUserConfig`" pulumi-lang-go="`customPosixUserConfig`" pulumi-lang-python="`custom_posix_user_config`" pulumi-lang-yaml="`customPosixUserConfig`" pulumi-lang-java="`customPosixUserConfig`">`custom_posix_user_config`</span> Block below.
  final DomainDefaultSpaceSettingsCustomPosixUserConfig? customPosixUserConfig;

  /// The execution role for the space.
  final String executionRole;

  /// The settings for the JupyterLab application. See <span pulumi-lang-nodejs="`jupyterLabAppSettings`" pulumi-lang-dotnet="`JupyterLabAppSettings`" pulumi-lang-go="`jupyterLabAppSettings`" pulumi-lang-python="`jupyter_lab_app_settings`" pulumi-lang-yaml="`jupyterLabAppSettings`" pulumi-lang-java="`jupyterLabAppSettings`">`jupyter_lab_app_settings`</span> Block below.
  final DomainDefaultSpaceSettingsJupyterLabAppSettings? jupyterLabAppSettings;

  /// The Jupyter server's app settings. See <span pulumi-lang-nodejs="`jupyterServerAppSettings`" pulumi-lang-dotnet="`JupyterServerAppSettings`" pulumi-lang-go="`jupyterServerAppSettings`" pulumi-lang-python="`jupyter_server_app_settings`" pulumi-lang-yaml="`jupyterServerAppSettings`" pulumi-lang-java="`jupyterServerAppSettings`">`jupyter_server_app_settings`</span> Block below.
  final DomainDefaultSpaceSettingsJupyterServerAppSettings?
      jupyterServerAppSettings;

  /// The kernel gateway app settings. See <span pulumi-lang-nodejs="`kernelGatewayAppSettings`" pulumi-lang-dotnet="`KernelGatewayAppSettings`" pulumi-lang-go="`kernelGatewayAppSettings`" pulumi-lang-python="`kernel_gateway_app_settings`" pulumi-lang-yaml="`kernelGatewayAppSettings`" pulumi-lang-java="`kernelGatewayAppSettings`">`kernel_gateway_app_settings`</span> Block below.
  final DomainDefaultSpaceSettingsKernelGatewayAppSettings?
      kernelGatewayAppSettings;

  /// The security groups for the Amazon Virtual Private Cloud that the space uses for communication.
  final List<String>? securityGroups;

  /// The storage settings for a private space. See <span pulumi-lang-nodejs="`spaceStorageSettings`" pulumi-lang-dotnet="`SpaceStorageSettings`" pulumi-lang-go="`spaceStorageSettings`" pulumi-lang-python="`space_storage_settings`" pulumi-lang-yaml="`spaceStorageSettings`" pulumi-lang-java="`spaceStorageSettings`">`space_storage_settings`</span> Block below.
  final DomainDefaultSpaceSettingsSpaceStorageSettings? spaceStorageSettings;

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
      map['customFileSystemConfigs'] = Input.encodeList<
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
          : Input.decodeList<DomainDefaultSpaceSettingsCustomFileSystemConfig>(
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
