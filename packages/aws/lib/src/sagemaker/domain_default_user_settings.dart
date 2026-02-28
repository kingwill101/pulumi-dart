// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_user_settings_canvas_app_settings.dart';
import 'domain_default_user_settings_code_editor_app_settings.dart';
import 'domain_default_user_settings_custom_file_system_config.dart';
import 'domain_default_user_settings_custom_posix_user_config.dart';
import 'domain_default_user_settings_jupyter_lab_app_settings.dart';
import 'domain_default_user_settings_jupyter_server_app_settings.dart';
import 'domain_default_user_settings_kernel_gateway_app_settings.dart';
import 'domain_default_user_settings_rsession_app_settings.dart';
import 'domain_default_user_settings_rstudio_server_pro_app_settings.dart';
import 'domain_default_user_settings_sharing_settings.dart';
import 'domain_default_user_settings_space_storage_settings.dart';
import 'domain_default_user_settings_studio_web_portal_settings.dart';
import 'domain_default_user_settings_tensor_board_app_settings.dart';

class DomainDefaultUserSettings {
  /// Indicates whether auto-mounting of an EFS volume is supported for the user profile. The `DefaultAsDomain` value is only supported for user profiles. Do not use the `DefaultAsDomain` value when setting this parameter for a domain. Valid values are: `Enabled`, `Disabled`, and `DefaultAsDomain`.
  final String? autoMountHomeEfs;

  /// The Canvas app settings. See `canvas_app_settings` Block below.
  final DomainDefaultUserSettingsCanvasAppSettings? canvasAppSettings;

  /// The Code Editor application settings. See `code_editor_app_settings` Block below.
  final DomainDefaultUserSettingsCodeEditorAppSettings? codeEditorAppSettings;

  /// The settings for assigning a custom file system to a user profile. Permitted users can access this file system in Amazon SageMaker AI Studio. See `custom_file_system_config` Block below.
  final List<DomainDefaultUserSettingsCustomFileSystemConfig>?
      customFileSystemConfigs;

  /// Details about the POSIX identity that is used for file system operations. See `custom_posix_user_config` Block below.
  final DomainDefaultUserSettingsCustomPosixUserConfig? customPosixUserConfig;

  /// The default experience that the user is directed to when accessing the domain. The supported values are: `studio::`: Indicates that Studio is the default experience. This value can only be passed if StudioWebPortal is set to ENABLED. `app:JupyterServer:`: Indicates that Studio Classic is the default experience.
  final String? defaultLandingUri;

  /// The execution role ARN for the user.
  final String executionRole;

  /// The settings for the JupyterLab application. See `jupyter_lab_app_settings` Block below.
  final DomainDefaultUserSettingsJupyterLabAppSettings? jupyterLabAppSettings;

  /// The Jupyter server's app settings. See `jupyter_server_app_settings` Block below.
  final DomainDefaultUserSettingsJupyterServerAppSettings?
      jupyterServerAppSettings;

  /// The kernel gateway app settings. See `kernel_gateway_app_settings` Block below.
  final DomainDefaultUserSettingsKernelGatewayAppSettings?
      kernelGatewayAppSettings;

  /// The RSession app settings. See `r_session_app_settings` Block below.
  final DomainDefaultUserSettingsRSessionAppSettings? rSessionAppSettings;

  /// A collection of settings that configure user interaction with the RStudioServerPro app. See `r_studio_server_pro_app_settings` Block below.
  final DomainDefaultUserSettingsRStudioServerProAppSettings?
      rStudioServerProAppSettings;

  /// A list of security group IDs that will be attached to the user.
  final List<String>? securityGroups;

  /// The sharing settings. See `sharing_settings` Block below.
  final DomainDefaultUserSettingsSharingSettings? sharingSettings;

  /// The storage settings for a private space. See `space_storage_settings` Block below.
  final DomainDefaultUserSettingsSpaceStorageSettings? spaceStorageSettings;

  /// Whether the user can access Studio. If this value is set to `DISABLED`, the user cannot access Studio, even if that is the default experience for the domain. Valid values are `ENABLED` and `DISABLED`.
  final String? studioWebPortal;

  /// The Studio Web Portal settings. See `studio_web_portal_settings` Block below.
  final DomainDefaultUserSettingsStudioWebPortalSettings?
      studioWebPortalSettings;

  /// The TensorBoard app settings. See `tensor_board_app_settings` Block below.
  final DomainDefaultUserSettingsTensorBoardAppSettings? tensorBoardAppSettings;

  /// Creates a new [DomainDefaultUserSettings].
  /// [autoMountHomeEfs] Indicates whether auto-mounting of an EFS volume is supported for the user profile. The `DefaultAsDomain` value is only supported for user profiles. Do not use the `DefaultAsDomain` value when setting this parameter for a domain. Valid values are: `Enabled`, `Disabled`, and `DefaultAsDomain`.
  /// [canvasAppSettings] The Canvas app settings. See `canvas_app_settings` Block below.
  /// [codeEditorAppSettings] The Code Editor application settings. See `code_editor_app_settings` Block below.
  /// [customFileSystemConfigs] The settings for assigning a custom file system to a user profile. Permitted users can access this file system in Amazon SageMaker AI Studio. See `custom_file_system_config` Block below.
  /// [customPosixUserConfig] Details about the POSIX identity that is used for file system operations. See `custom_posix_user_config` Block below.
  /// [defaultLandingUri] The default experience that the user is directed to when accessing the domain. The supported values are: `studio::`: Indicates that Studio is the default experience. This value can only be passed if StudioWebPortal is set to ENABLED. `app:JupyterServer:`: Indicates that Studio Classic is the default experience.
  /// [executionRole] The execution role ARN for the user.
  /// [jupyterLabAppSettings] The settings for the JupyterLab application. See `jupyter_lab_app_settings` Block below.
  /// [jupyterServerAppSettings] The Jupyter server's app settings. See `jupyter_server_app_settings` Block below.
  /// [kernelGatewayAppSettings] The kernel gateway app settings. See `kernel_gateway_app_settings` Block below.
  /// [rSessionAppSettings] The RSession app settings. See `r_session_app_settings` Block below.
  /// [rStudioServerProAppSettings] A collection of settings that configure user interaction with the RStudioServerPro app. See `r_studio_server_pro_app_settings` Block below.
  /// [securityGroups] A list of security group IDs that will be attached to the user.
  /// [sharingSettings] The sharing settings. See `sharing_settings` Block below.
  /// [spaceStorageSettings] The storage settings for a private space. See `space_storage_settings` Block below.
  /// [studioWebPortal] Whether the user can access Studio. If this value is set to `DISABLED`, the user cannot access Studio, even if that is the default experience for the domain. Valid values are `ENABLED` and `DISABLED`.
  /// [studioWebPortalSettings] The Studio Web Portal settings. See `studio_web_portal_settings` Block below.
  /// [tensorBoardAppSettings] The TensorBoard app settings. See `tensor_board_app_settings` Block below.
  DomainDefaultUserSettings({
    this.autoMountHomeEfs,
    this.canvasAppSettings,
    this.codeEditorAppSettings,
    this.customFileSystemConfigs,
    this.customPosixUserConfig,
    this.defaultLandingUri,
    required this.executionRole,
    this.jupyterLabAppSettings,
    this.jupyterServerAppSettings,
    this.kernelGatewayAppSettings,
    this.rSessionAppSettings,
    this.rStudioServerProAppSettings,
    this.securityGroups,
    this.sharingSettings,
    this.spaceStorageSettings,
    this.studioWebPortal,
    this.studioWebPortalSettings,
    this.tensorBoardAppSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoMountHomeEfsValue = autoMountHomeEfs;
    if (autoMountHomeEfsValue != null) {
      map['autoMountHomeEfs'] = autoMountHomeEfsValue;
    }
    final canvasAppSettingsValue = canvasAppSettings;
    if (canvasAppSettingsValue != null) {
      map['canvasAppSettings'] = canvasAppSettingsValue.toMap();
    }
    final codeEditorAppSettingsValue = codeEditorAppSettings;
    if (codeEditorAppSettingsValue != null) {
      map['codeEditorAppSettings'] = codeEditorAppSettingsValue.toMap();
    }
    final customFileSystemConfigsValue = customFileSystemConfigs;
    if (customFileSystemConfigsValue != null) {
      map['customFileSystemConfigs'] = pulumi.Input.encodeList<
              DomainDefaultUserSettingsCustomFileSystemConfig,
              Map<String, dynamic>>(
          customFileSystemConfigsValue, (value) => value.toMap());
    }
    final customPosixUserConfigValue = customPosixUserConfig;
    if (customPosixUserConfigValue != null) {
      map['customPosixUserConfig'] = customPosixUserConfigValue.toMap();
    }
    final defaultLandingUriValue = defaultLandingUri;
    if (defaultLandingUriValue != null) {
      map['defaultLandingUri'] = defaultLandingUriValue;
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
    final rSessionAppSettingsValue = rSessionAppSettings;
    if (rSessionAppSettingsValue != null) {
      map['rSessionAppSettings'] = rSessionAppSettingsValue.toMap();
    }
    final rStudioServerProAppSettingsValue = rStudioServerProAppSettings;
    if (rStudioServerProAppSettingsValue != null) {
      map['rStudioServerProAppSettings'] =
          rStudioServerProAppSettingsValue.toMap();
    }
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    final sharingSettingsValue = sharingSettings;
    if (sharingSettingsValue != null) {
      map['sharingSettings'] = sharingSettingsValue.toMap();
    }
    final spaceStorageSettingsValue = spaceStorageSettings;
    if (spaceStorageSettingsValue != null) {
      map['spaceStorageSettings'] = spaceStorageSettingsValue.toMap();
    }
    final studioWebPortalValue = studioWebPortal;
    if (studioWebPortalValue != null) {
      map['studioWebPortal'] = studioWebPortalValue;
    }
    final studioWebPortalSettingsValue = studioWebPortalSettings;
    if (studioWebPortalSettingsValue != null) {
      map['studioWebPortalSettings'] = studioWebPortalSettingsValue.toMap();
    }
    final tensorBoardAppSettingsValue = tensorBoardAppSettings;
    if (tensorBoardAppSettingsValue != null) {
      map['tensorBoardAppSettings'] = tensorBoardAppSettingsValue.toMap();
    }
    return map;
  }

  factory DomainDefaultUserSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettings(
      autoMountHomeEfs: map['autoMountHomeEfs'] == null
          ? null
          : map['autoMountHomeEfs'] as String,
      canvasAppSettings: map['canvasAppSettings'] == null
          ? null
          : DomainDefaultUserSettingsCanvasAppSettings.fromMap(
              (map['canvasAppSettings'] as Map).cast<String, dynamic>()),
      codeEditorAppSettings: map['codeEditorAppSettings'] == null
          ? null
          : DomainDefaultUserSettingsCodeEditorAppSettings.fromMap(
              (map['codeEditorAppSettings'] as Map).cast<String, dynamic>()),
      customFileSystemConfigs: map['customFileSystemConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  DomainDefaultUserSettingsCustomFileSystemConfig>(
              map['customFileSystemConfigs'],
              (value) =>
                  DomainDefaultUserSettingsCustomFileSystemConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      customPosixUserConfig: map['customPosixUserConfig'] == null
          ? null
          : DomainDefaultUserSettingsCustomPosixUserConfig.fromMap(
              (map['customPosixUserConfig'] as Map).cast<String, dynamic>()),
      defaultLandingUri: map['defaultLandingUri'] == null
          ? null
          : map['defaultLandingUri'] as String,
      executionRole: map['executionRole'] as String,
      jupyterLabAppSettings: map['jupyterLabAppSettings'] == null
          ? null
          : DomainDefaultUserSettingsJupyterLabAppSettings.fromMap(
              (map['jupyterLabAppSettings'] as Map).cast<String, dynamic>()),
      jupyterServerAppSettings: map['jupyterServerAppSettings'] == null
          ? null
          : DomainDefaultUserSettingsJupyterServerAppSettings.fromMap(
              (map['jupyterServerAppSettings'] as Map).cast<String, dynamic>()),
      kernelGatewayAppSettings: map['kernelGatewayAppSettings'] == null
          ? null
          : DomainDefaultUserSettingsKernelGatewayAppSettings.fromMap(
              (map['kernelGatewayAppSettings'] as Map).cast<String, dynamic>()),
      rSessionAppSettings: map['rSessionAppSettings'] == null
          ? null
          : DomainDefaultUserSettingsRSessionAppSettings.fromMap(
              (map['rSessionAppSettings'] as Map).cast<String, dynamic>()),
      rStudioServerProAppSettings: map['rStudioServerProAppSettings'] == null
          ? null
          : DomainDefaultUserSettingsRStudioServerProAppSettings.fromMap(
              (map['rStudioServerProAppSettings'] as Map)
                  .cast<String, dynamic>()),
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      sharingSettings: map['sharingSettings'] == null
          ? null
          : DomainDefaultUserSettingsSharingSettings.fromMap(
              (map['sharingSettings'] as Map).cast<String, dynamic>()),
      spaceStorageSettings: map['spaceStorageSettings'] == null
          ? null
          : DomainDefaultUserSettingsSpaceStorageSettings.fromMap(
              (map['spaceStorageSettings'] as Map).cast<String, dynamic>()),
      studioWebPortal: map['studioWebPortal'] == null
          ? null
          : map['studioWebPortal'] as String,
      studioWebPortalSettings: map['studioWebPortalSettings'] == null
          ? null
          : DomainDefaultUserSettingsStudioWebPortalSettings.fromMap(
              (map['studioWebPortalSettings'] as Map).cast<String, dynamic>()),
      tensorBoardAppSettings: map['tensorBoardAppSettings'] == null
          ? null
          : DomainDefaultUserSettingsTensorBoardAppSettings.fromMap(
              (map['tensorBoardAppSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
