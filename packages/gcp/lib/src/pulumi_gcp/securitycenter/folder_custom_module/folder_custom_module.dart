import 'package:pulumi/pulumi.dart';
import '../folder_custom_module_custom_config/folder_custom_module_custom_config.dart';
import 'folder_custom_module_args.dart';

/// Represents an instance of a Security Health Analytics custom module, including
/// its full module name, display name, enablement state, and last updated time.
/// You can create a custom module at the organization, folder, or project level.
/// Custom modules that you create at the organization or folder level are inherited
/// by the child folders and projects.
///
///
/// To get more information about FolderCustomModule, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/folders.securityHealthAnalyticsSettings.customModules)
/// * How-to Guides
/// * [Overview of custom modules for Security Health Analytics](https://cloud.google.com/security-command-center/docs/custom-modules-sha-overview)
///
/// ## Example Usage
///
/// ### Scc Folder Custom Module Basic
///
///
///
/// ### Scc Folder Custom Module Full
///
///
///
///
/// ## Import
///
/// FolderCustomModule can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/securityHealthAnalyticsSettings/customModules/{{name}}`
///
/// * `{{folder}}/{{name}}`
///
/// When using the `pulumi import` command, FolderCustomModule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/folderCustomModule:FolderCustomModule default folders/{{folder}}/securityHealthAnalyticsSettings/customModules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/folderCustomModule:FolderCustomModule default {{folder}}/{{name}}
/// ```
class FolderCustomModule extends CustomResource {
  /// If empty, indicates that the custom module was created in the organization, folder,
  /// or project in which you are viewing the custom module. Otherwise, ancestor_module
  /// specifies the organization or folder from which the custom module is inherited.
  late final Output<String> ancestorModule;

  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  late final Output<FolderCustomModuleCustomConfig> customConfig;

  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  late final Output<String> displayName;

  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final Output<String> enablementState;

  /// Numerical ID of the parent folder.
  late final Output<String> folder;

  /// The editor that last updated the custom module.
  late final Output<String> lastEditor;

  /// The resource name of the custom module. Its format is "folders/{folder_id}/securityHealthAnalyticsSettings/customModules/{customModule}".
  /// The id {customModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  late final Output<String> name;

  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  FolderCustomModule(
    String name, {
    FolderCustomModuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/folderCustomModule:FolderCustomModule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.ancestorModule = registerOutput<String>('ancestorModule');
    this.customConfig =
        registerOutput<FolderCustomModuleCustomConfig>('customConfig');
    this.displayName = registerOutput<String>('displayName');
    this.enablementState = registerOutput<String>('enablementState');
    this.folder = registerOutput<String>('folder');
    this.lastEditor = registerOutput<String>('lastEditor');
    this.name = registerOutput<String>('name');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
