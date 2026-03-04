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
  final pulumi.Input<List<DomainDefaultSpaceSettingsCustomFileSystemConfig>>?
  customFileSystemConfigs;

  /// Details about the POSIX identity that is used for file system operations. See `custom_posix_user_config` Block below.
  final pulumi.Input<DomainDefaultSpaceSettingsCustomPosixUserConfig>?
  customPosixUserConfig;

  /// The execution role for the space.
  final pulumi.Input<String> executionRole;

  /// The settings for the JupyterLab application. See `jupyter_lab_app_settings` Block below.
  final pulumi.Input<DomainDefaultSpaceSettingsJupyterLabAppSettings>?
  jupyterLabAppSettings;

  /// The Jupyter server's app settings. See `jupyter_server_app_settings` Block below.
  final pulumi.Input<DomainDefaultSpaceSettingsJupyterServerAppSettings>?
  jupyterServerAppSettings;

  /// The kernel gateway app settings. See `kernel_gateway_app_settings` Block below.
  final pulumi.Input<DomainDefaultSpaceSettingsKernelGatewayAppSettings>?
  kernelGatewayAppSettings;

  /// The security groups for the Amazon Virtual Private Cloud that the space uses for communication.
  final pulumi.Input<List<String>>? securityGroups;

  /// The storage settings for a private space. See `space_storage_settings` Block below.
  final pulumi.Input<DomainDefaultSpaceSettingsSpaceStorageSettings>?
  spaceStorageSettings;

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
    return <String, dynamic>{
      'customFileSystemConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainDefaultSpaceSettingsCustomFileSystemConfig>,
            List<Map<String, dynamic>>
          >(
            customFileSystemConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  DomainDefaultSpaceSettingsCustomFileSystemConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'customPosixUserConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDefaultSpaceSettingsCustomPosixUserConfig,
            Map<String, dynamic>
          >(customPosixUserConfig, (value) => value.toMap()),
      'executionRole': executionRole,
      'jupyterLabAppSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDefaultSpaceSettingsJupyterLabAppSettings,
            Map<String, dynamic>
          >(jupyterLabAppSettings, (value) => value.toMap()),
      'jupyterServerAppSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDefaultSpaceSettingsJupyterServerAppSettings,
            Map<String, dynamic>
          >(jupyterServerAppSettings, (value) => value.toMap()),
      'kernelGatewayAppSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDefaultSpaceSettingsKernelGatewayAppSettings,
            Map<String, dynamic>
          >(kernelGatewayAppSettings, (value) => value.toMap()),
      'securityGroups': ?securityGroups,
      'spaceStorageSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDefaultSpaceSettingsSpaceStorageSettings,
            Map<String, dynamic>
          >(spaceStorageSettings, (value) => value.toMap()),
    };
  }

  factory DomainDefaultSpaceSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultSpaceSettings(
      customFileSystemConfigs: (() {
        final guardedValue = map['customFileSystemConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            DomainDefaultSpaceSettingsCustomFileSystemConfig
          >(
            guardedValue,
            (value) => DomainDefaultSpaceSettingsCustomFileSystemConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      customPosixUserConfig: (() {
        final guardedValue = map['customPosixUserConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDefaultSpaceSettingsCustomPosixUserConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      executionRole: pulumi.Input.fromValue(map['executionRole'] as String),
      jupyterLabAppSettings: (() {
        final guardedValue = map['jupyterLabAppSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDefaultSpaceSettingsJupyterLabAppSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      jupyterServerAppSettings: (() {
        final guardedValue = map['jupyterServerAppSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDefaultSpaceSettingsJupyterServerAppSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kernelGatewayAppSettings: (() {
        final guardedValue = map['kernelGatewayAppSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDefaultSpaceSettingsKernelGatewayAppSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      securityGroups: (() {
        final guardedValue = map['securityGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      spaceStorageSettings: (() {
        final guardedValue = map['spaceStorageSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDefaultSpaceSettingsSpaceStorageSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
