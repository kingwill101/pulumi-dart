// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_canvas_app_settings.dart';
import 'user_profile_user_settings_code_editor_app_settings.dart';
import 'user_profile_user_settings_custom_file_system_config.dart';
import 'user_profile_user_settings_custom_posix_user_config.dart';
import 'user_profile_user_settings_jupyter_lab_app_settings.dart';
import 'user_profile_user_settings_jupyter_server_app_settings.dart';
import 'user_profile_user_settings_kernel_gateway_app_settings.dart';
import 'user_profile_user_settings_rsession_app_settings.dart';
import 'user_profile_user_settings_rstudio_server_pro_app_settings.dart';
import 'user_profile_user_settings_sharing_settings.dart';
import 'user_profile_user_settings_space_storage_settings.dart';
import 'user_profile_user_settings_studio_web_portal_settings.dart';
import 'user_profile_user_settings_tensor_board_app_settings.dart';

class UserProfileUserSettings {
  /// Indicates whether auto-mounting of an EFS volume is supported for the user profile. The `DefaultAsDomain` value is only supported for user profiles. Do not use the `DefaultAsDomain` value when setting this parameter for a domain. Valid values are: `Enabled`, `Disabled`, and `DefaultAsDomain`.
  final pulumi.Input<String>? autoMountHomeEfs;
  /// The Canvas app settings. See Canvas App Settings below.
  final pulumi.Input<UserProfileUserSettingsCanvasAppSettings>? canvasAppSettings;
  /// The Code Editor application settings. See Code Editor App Settings below.
  final pulumi.Input<UserProfileUserSettingsCodeEditorAppSettings>? codeEditorAppSettings;
  /// The settings for assigning a custom file system to a user profile. Permitted users can access this file system in Amazon SageMaker AI Studio. See Custom File System Config below.
  final pulumi.Input<List<UserProfileUserSettingsCustomFileSystemConfig>>? customFileSystemConfigs;
  /// Details about the POSIX identity that is used for file system operations. See Custom Posix User Config below.
  final pulumi.Input<UserProfileUserSettingsCustomPosixUserConfig>? customPosixUserConfig;
  /// The default experience that the user is directed to when accessing the domain. The supported values are: `studio::`: Indicates that Studio is the default experience. This value can only be passed if StudioWebPortal is set to ENABLED. `app:JupyterServer:`: Indicates that Studio Classic is the default experience.
  final pulumi.Input<String>? defaultLandingUri;
  /// The execution role ARN for the user.
  final pulumi.Input<String> executionRole;
  /// The settings for the JupyterLab application. See Jupyter Lab App Settings below.
  final pulumi.Input<UserProfileUserSettingsJupyterLabAppSettings>? jupyterLabAppSettings;
  /// The Jupyter server's app settings. See Jupyter Server App Settings below.
  final pulumi.Input<UserProfileUserSettingsJupyterServerAppSettings>? jupyterServerAppSettings;
  /// The kernel gateway app settings. See Kernel Gateway App Settings below.
  final pulumi.Input<UserProfileUserSettingsKernelGatewayAppSettings>? kernelGatewayAppSettings;
  /// The RSession app settings. See RSession App Settings below.
  final pulumi.Input<UserProfileUserSettingsRSessionAppSettings>? rSessionAppSettings;
  /// A collection of settings that configure user interaction with the RStudioServerPro app. See RStudioServerProAppSettings below.
  final pulumi.Input<UserProfileUserSettingsRStudioServerProAppSettings>? rStudioServerProAppSettings;
  /// A list of security group IDs that will be attached to the user.
  final pulumi.Input<List<String>>? securityGroups;
  /// The sharing settings. See Sharing Settings below.
  final pulumi.Input<UserProfileUserSettingsSharingSettings>? sharingSettings;
  /// The storage settings for a private space. See Space Storage Settings below.
  final pulumi.Input<UserProfileUserSettingsSpaceStorageSettings>? spaceStorageSettings;
  /// Whether the user can access Studio. If this value is set to `DISABLED`, the user cannot access Studio, even if that is the default experience for the domain. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? studioWebPortal;
  /// The Studio Web Portal settings. See `studioWebPortalSettings` Block below.
  final pulumi.Input<UserProfileUserSettingsStudioWebPortalSettings>? studioWebPortalSettings;
  /// The TensorBoard app settings. See TensorBoard App Settings below.
  final pulumi.Input<UserProfileUserSettingsTensorBoardAppSettings>? tensorBoardAppSettings;

  /// Creates a new [UserProfileUserSettings].
  /// [autoMountHomeEfs] Indicates whether auto-mounting of an EFS volume is supported for the user profile. The `DefaultAsDomain` value is only supported for user profiles. Do not use the `DefaultAsDomain` value when setting this parameter for a domain. Valid values are: `Enabled`, `Disabled`, and `DefaultAsDomain`.
  /// [canvasAppSettings] The Canvas app settings. See Canvas App Settings below.
  /// [codeEditorAppSettings] The Code Editor application settings. See Code Editor App Settings below.
  /// [customFileSystemConfigs] The settings for assigning a custom file system to a user profile. Permitted users can access this file system in Amazon SageMaker AI Studio. See Custom File System Config below.
  /// [customPosixUserConfig] Details about the POSIX identity that is used for file system operations. See Custom Posix User Config below.
  /// [defaultLandingUri] The default experience that the user is directed to when accessing the domain. The supported values are: `studio::`: Indicates that Studio is the default experience. This value can only be passed if StudioWebPortal is set to ENABLED. `app:JupyterServer:`: Indicates that Studio Classic is the default experience.
  /// [executionRole] The execution role ARN for the user.
  /// [jupyterLabAppSettings] The settings for the JupyterLab application. See Jupyter Lab App Settings below.
  /// [jupyterServerAppSettings] The Jupyter server's app settings. See Jupyter Server App Settings below.
  /// [kernelGatewayAppSettings] The kernel gateway app settings. See Kernel Gateway App Settings below.
  /// [rSessionAppSettings] The RSession app settings. See RSession App Settings below.
  /// [rStudioServerProAppSettings] A collection of settings that configure user interaction with the RStudioServerPro app. See RStudioServerProAppSettings below.
  /// [securityGroups] A list of security group IDs that will be attached to the user.
  /// [sharingSettings] The sharing settings. See Sharing Settings below.
  /// [spaceStorageSettings] The storage settings for a private space. See Space Storage Settings below.
  /// [studioWebPortal] Whether the user can access Studio. If this value is set to `DISABLED`, the user cannot access Studio, even if that is the default experience for the domain. Valid values are `ENABLED` and `DISABLED`.
  /// [studioWebPortalSettings] The Studio Web Portal settings. See `studioWebPortalSettings` Block below.
  /// [tensorBoardAppSettings] The TensorBoard app settings. See TensorBoard App Settings below.
  const UserProfileUserSettings({
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
    return <String, dynamic>{
      'autoMountHomeEfs': ?autoMountHomeEfs,
      'canvasAppSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsCanvasAppSettings, Map<String, dynamic>>(canvasAppSettings, (value) => value.toMap()),
      'codeEditorAppSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsCodeEditorAppSettings, Map<String, dynamic>>(codeEditorAppSettings, (value) => value.toMap()),
      'customFileSystemConfigs': ?pulumi.Input.mapOptionalInputValue<List<UserProfileUserSettingsCustomFileSystemConfig>, List<Map<String, dynamic>>>(customFileSystemConfigs, (value) => pulumi.Input.encodeList<UserProfileUserSettingsCustomFileSystemConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customPosixUserConfig': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsCustomPosixUserConfig, Map<String, dynamic>>(customPosixUserConfig, (value) => value.toMap()),
      'defaultLandingUri': ?defaultLandingUri,
      'executionRole': executionRole,
      'jupyterLabAppSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsJupyterLabAppSettings, Map<String, dynamic>>(jupyterLabAppSettings, (value) => value.toMap()),
      'jupyterServerAppSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsJupyterServerAppSettings, Map<String, dynamic>>(jupyterServerAppSettings, (value) => value.toMap()),
      'kernelGatewayAppSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsKernelGatewayAppSettings, Map<String, dynamic>>(kernelGatewayAppSettings, (value) => value.toMap()),
      'rSessionAppSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsRSessionAppSettings, Map<String, dynamic>>(rSessionAppSettings, (value) => value.toMap()),
      'rStudioServerProAppSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsRStudioServerProAppSettings, Map<String, dynamic>>(rStudioServerProAppSettings, (value) => value.toMap()),
      'securityGroups': ?securityGroups,
      'sharingSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsSharingSettings, Map<String, dynamic>>(sharingSettings, (value) => value.toMap()),
      'spaceStorageSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsSpaceStorageSettings, Map<String, dynamic>>(spaceStorageSettings, (value) => value.toMap()),
      'studioWebPortal': ?studioWebPortal,
      'studioWebPortalSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsStudioWebPortalSettings, Map<String, dynamic>>(studioWebPortalSettings, (value) => value.toMap()),
      'tensorBoardAppSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsTensorBoardAppSettings, Map<String, dynamic>>(tensorBoardAppSettings, (value) => value.toMap()),
    };
  }

  factory UserProfileUserSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettings(
      autoMountHomeEfs: (() { final guardedValue = map['autoMountHomeEfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      canvasAppSettings: (() { final guardedValue = map['canvasAppSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsCanvasAppSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      codeEditorAppSettings: (() { final guardedValue = map['codeEditorAppSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsCodeEditorAppSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customFileSystemConfigs: (() { final guardedValue = map['customFileSystemConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserProfileUserSettingsCustomFileSystemConfig>(guardedValue, (value) => UserProfileUserSettingsCustomFileSystemConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customPosixUserConfig: (() { final guardedValue = map['customPosixUserConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsCustomPosixUserConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultLandingUri: (() { final guardedValue = map['defaultLandingUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRole: pulumi.Input.fromValue(map['executionRole'] as String),
      jupyterLabAppSettings: (() { final guardedValue = map['jupyterLabAppSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsJupyterLabAppSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jupyterServerAppSettings: (() { final guardedValue = map['jupyterServerAppSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsJupyterServerAppSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kernelGatewayAppSettings: (() { final guardedValue = map['kernelGatewayAppSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsKernelGatewayAppSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rSessionAppSettings: (() { final guardedValue = map['rSessionAppSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsRSessionAppSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rStudioServerProAppSettings: (() { final guardedValue = map['rStudioServerProAppSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsRStudioServerProAppSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sharingSettings: (() { final guardedValue = map['sharingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsSharingSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spaceStorageSettings: (() { final guardedValue = map['spaceStorageSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsSpaceStorageSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      studioWebPortal: (() { final guardedValue = map['studioWebPortal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      studioWebPortalSettings: (() { final guardedValue = map['studioWebPortalSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsStudioWebPortalSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tensorBoardAppSettings: (() { final guardedValue = map['tensorBoardAppSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsTensorBoardAppSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
