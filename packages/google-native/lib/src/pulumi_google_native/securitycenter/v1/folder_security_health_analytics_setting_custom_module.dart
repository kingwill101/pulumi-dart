import 'package:pulumi/pulumi.dart' hide Config;
import 'folder_security_health_analytics_setting_custom_module_args.dart';
import 'google_cloud_securitycenter_v1_custom_config_response.dart';

/// Creates a resident SecurityHealthAnalyticsCustomModule at the scope of the given CRM parent, and also creates inherited SecurityHealthAnalyticsCustomModules for all CRM descendants of the given parent. These modules are enabled by default.
/// Auto-naming is currently not supported for this resource.
class FolderSecurityHealthAnalyticsSettingCustomModule extends CustomResource {
  /// If empty, indicates that the custom module was created in the organization, folder, or project in which you are viewing the custom module. Otherwise, `ancestor_module` specifies the organization or folder from which the custom module is inherited.
  late final Output<String> ancestorModule;

  /// The user specified custom configuration for the module.
  late final Output<GoogleCloudSecuritycenterV1CustomConfigResponse>
      customConfig;

  /// The display name of the Security Health Analytics custom module. This display name becomes the finding category for all findings that are returned by this custom module. The display name must be between 1 and 128 characters, start with a lowercase letter, and contain alphanumeric characters or underscores only.
  late final Output<String> displayName;

  /// The enablement state of the custom module.
  late final Output<String> enablementState;
  late final Output<String> folderId;

  /// The editor that last updated the custom module.
  late final Output<String> lastEditor;

  /// Immutable. The resource name of the custom module. Its format is "organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}", or "folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}", or "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}" The id {customModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  late final Output<String> name;

  /// The time at which the custom module was last updated.
  late final Output<String> updateTime;

  FolderSecurityHealthAnalyticsSettingCustomModule(
    String name, {
    FolderSecurityHealthAnalyticsSettingCustomModuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:securitycenter/v1:FolderSecurityHealthAnalyticsSettingCustomModule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.ancestorModule = registerOutput<String>('ancestorModule');
    this.customConfig =
        registerOutput<GoogleCloudSecuritycenterV1CustomConfigResponse>(
            'customConfig');
    this.displayName = registerOutput<String>('displayName');
    this.enablementState = registerOutput<String>('enablementState');
    this.folderId = registerOutput<String>('folderId');
    this.lastEditor = registerOutput<String>('lastEditor');
    this.name = registerOutput<String>('name');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
