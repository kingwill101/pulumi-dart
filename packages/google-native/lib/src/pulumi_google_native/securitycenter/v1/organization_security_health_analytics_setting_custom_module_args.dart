// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_securitycenter_v1_custom_config.dart';
import 'organization_security_health_analytics_setting_custom_module_enablement_state.dart';

/// The set of arguments for OrganizationSecurityHealthAnalyticsSettingCustomModule.
class OrganizationSecurityHealthAnalyticsSettingCustomModuleArgs {
  /// The user specified custom configuration for the module.
  final pulumi.Input<GoogleCloudSecuritycenterV1CustomConfig>? customConfig;

  /// The display name of the Security Health Analytics custom module. This display name becomes the finding category for all findings that are returned by this custom module. The display name must be between 1 and 128 characters, start with a lowercase letter, and contain alphanumeric characters or underscores only.
  final pulumi.Input<String>? displayName;

  /// The enablement state of the custom module.
  final pulumi.Input<
          OrganizationSecurityHealthAnalyticsSettingCustomModuleEnablementState>?
      enablementState;

  /// Immutable. The resource name of the custom module. Its format is "organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}", or "folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}", or "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}" The id {customModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  OrganizationSecurityHealthAnalyticsSettingCustomModuleArgs({
    this.customConfig,
    this.displayName,
    this.enablementState,
    this.name,
    required this.organizationId,
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
          OrganizationSecurityHealthAnalyticsSettingCustomModuleEnablementState,
          String>(enablementStateValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory OrganizationSecurityHealthAnalyticsSettingCustomModuleArgs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationSecurityHealthAnalyticsSettingCustomModuleArgs(
      customConfig:
          pulumi.Input.asOptionalInput<GoogleCloudSecuritycenterV1CustomConfig>(
              map['customConfig']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      enablementState: pulumi.Input.asOptionalInput<
              OrganizationSecurityHealthAnalyticsSettingCustomModuleEnablementState>(
          map['enablementState']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
