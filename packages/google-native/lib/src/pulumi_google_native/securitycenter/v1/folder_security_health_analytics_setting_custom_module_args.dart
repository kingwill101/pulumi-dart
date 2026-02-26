// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'folder_security_health_analytics_setting_custom_module_enablement_state.dart';
import 'google_cloud_securitycenter_v1_custom_config.dart';

/// The set of arguments for FolderSecurityHealthAnalyticsSettingCustomModule.
class FolderSecurityHealthAnalyticsSettingCustomModuleArgs {
  /// The user specified custom configuration for the module.
  final Input<GoogleCloudSecuritycenterV1CustomConfig>? customConfig;

  /// The display name of the Security Health Analytics custom module. This display name becomes the finding category for all findings that are returned by this custom module. The display name must be between 1 and 128 characters, start with a lowercase letter, and contain alphanumeric characters or underscores only.
  final Input<String>? displayName;

  /// The enablement state of the custom module.
  final Input<FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState>?
      enablementState;
  final Input<String> folderId;

  /// Immutable. The resource name of the custom module. Its format is "organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}", or "folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}", or "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}" The id {customModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  final Input<String>? name;

  FolderSecurityHealthAnalyticsSettingCustomModuleArgs({
    this.customConfig,
    this.displayName,
    this.enablementState,
    required this.folderId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customConfigValue = customConfig;
    if (customConfigValue != null) {
      map['customConfig'] = Input.mapOptionalInputValue<
          GoogleCloudSecuritycenterV1CustomConfig,
          Map<String, dynamic>>(customConfigValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final enablementStateValue = enablementState;
    if (enablementStateValue != null) {
      map['enablementState'] = Input.mapOptionalInputValue<
          FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState,
          String>(enablementStateValue, (value) => value.value);
    }
    map['folderId'] = folderId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory FolderSecurityHealthAnalyticsSettingCustomModuleArgs.fromMap(
      Map<String, dynamic> map) {
    return FolderSecurityHealthAnalyticsSettingCustomModuleArgs(
      customConfig:
          Input.asOptionalInput<GoogleCloudSecuritycenterV1CustomConfig>(
              map['customConfig']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      enablementState: Input.asOptionalInput<
              FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState>(
          map['enablementState']),
      folderId: Input.asInput<String>(map['folderId']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
