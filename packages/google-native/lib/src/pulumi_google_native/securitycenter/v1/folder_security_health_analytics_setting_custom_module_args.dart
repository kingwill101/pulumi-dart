// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_security_health_analytics_setting_custom_module_enablement_state.dart';
import 'google_cloud_securitycenter_v1_custom_config.dart';

/// The set of arguments for FolderSecurityHealthAnalyticsSettingCustomModule.
class FolderSecurityHealthAnalyticsSettingCustomModuleArgs {
  /// The user specified custom configuration for the module.
  final pulumi.Input<GoogleCloudSecuritycenterV1CustomConfig>? customConfig;

  /// The display name of the Security Health Analytics custom module. This display name becomes the finding category for all findings that are returned by this custom module. The display name must be between 1 and 128 characters, start with a lowercase letter, and contain alphanumeric characters or underscores only.
  final pulumi.Input<String>? displayName;

  /// The enablement state of the custom module.
  final pulumi
      .Input<FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState>?
      enablementState;
  final pulumi.Input<String> folderId;

  /// Immutable. The resource name of the custom module. Its format is "organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}", or "folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}", or "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}" The id {customModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  final pulumi.Input<String>? name;

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
      map['customConfig'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudSecuritycenterV1CustomConfig,
          Map<String, dynamic>>(customConfigValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final enablementStateValue = enablementState;
    if (enablementStateValue != null) {
      map['enablementState'] = pulumi.Input.mapOptionalInputValue<
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
          pulumi.Input.asOptionalInput<GoogleCloudSecuritycenterV1CustomConfig>(
              map['customConfig']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      enablementState: pulumi.Input.asOptionalInput<
              FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState>(
          map['enablementState']),
      folderId: pulumi.Input.asInput<String>(map['folderId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
