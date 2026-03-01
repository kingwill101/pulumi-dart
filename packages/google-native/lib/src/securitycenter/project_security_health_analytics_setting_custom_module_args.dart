// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_securitycenter_v1_custom_config.dart';
import 'project_security_health_analytics_setting_custom_module_enablement_state.dart';

/// {@template pulumi_securitycenter_v1_project_security_health_analytics_setting_custom_module_args_doc}
/// The set of arguments for ProjectSecurityHealthAnalyticsSettingCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_project_security_health_analytics_setting_custom_module_args_doc}
class ProjectSecurityHealthAnalyticsSettingCustomModuleArgs {
  /// The user specified custom configuration for the module.
  final pulumi.Input<GoogleCloudSecuritycenterV1CustomConfig>? customConfig;

  /// The display name of the Security Health Analytics custom module. This display name becomes the finding category for all findings that are returned by this custom module. The display name must be between 1 and 128 characters, start with a lowercase letter, and contain alphanumeric characters or underscores only.
  final pulumi.Input<String>? displayName;

  /// The enablement state of the custom module.
  final pulumi.Input<
    ProjectSecurityHealthAnalyticsSettingCustomModuleEnablementState
  >?
  enablementState;

  /// Immutable. The resource name of the custom module. Its format is "organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}", or "folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}", or "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}" The id {customModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectSecurityHealthAnalyticsSettingCustomModuleArgs].
  /// [customConfig] The user specified custom configuration for the module.
  /// [displayName] The display name of the Security Health Analytics custom module. This display name becomes the finding category for all findings that are returned by this custom module. The display name must be between 1 and 128 characters, start with a lowercase letter, and contain alphanumeric characters or underscores only.
  /// [enablementState] The enablement state of the custom module.
  /// [name] Immutable. The resource name of the custom module. Its format is "organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}", or "folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}", or "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}" The id {customModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  /// [project] Optional.
  ProjectSecurityHealthAnalyticsSettingCustomModuleArgs({
    GoogleCloudSecuritycenterV1CustomConfig? customConfig,
    String? displayName,
    ProjectSecurityHealthAnalyticsSettingCustomModuleEnablementState?
    enablementState,
    String? name,
    String? project,
  }) : customConfig =
           pulumi.Input.asOptionalInput<
             GoogleCloudSecuritycenterV1CustomConfig
           >(customConfig),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       enablementState =
           pulumi.Input.asOptionalInput<
             ProjectSecurityHealthAnalyticsSettingCustomModuleEnablementState
           >(enablementState),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudSecuritycenterV1CustomConfig,
            Map<String, dynamic>
          >(customConfig, (value) => value.toMap()),
      'displayName': ?displayName,
      'enablementState':
          ?pulumi.Input.mapOptionalInputValue<
            ProjectSecurityHealthAnalyticsSettingCustomModuleEnablementState,
            String
          >(enablementState, (value) => value.value),
      'name': ?name,
      'project': ?project,
    };
  }

  factory ProjectSecurityHealthAnalyticsSettingCustomModuleArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProjectSecurityHealthAnalyticsSettingCustomModuleArgs(
      customConfig: map['customConfig'] == null
          ? null
          : GoogleCloudSecuritycenterV1CustomConfig.fromMap(
              (map['customConfig'] as Map).cast<String, dynamic>(),
            ),
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      enablementState: map['enablementState'] == null
          ? null
          : ProjectSecurityHealthAnalyticsSettingCustomModuleEnablementState.fromValue(
              map['enablementState'] as String,
            ),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
