import 'package:pulumi/pulumi.dart';
import 'mute_config_args.dart';

/// Creates a mute config.
/// Auto-naming is currently not supported for this resource.
class MuteConfig extends CustomResource {
  /// The time at which the mute config was created. This field is set by the server and will be ignored if provided on config creation.
  late final Output<String> createTime;

  /// A description of the mute config.
  late final Output<String> description;

  /// The human readable name to be displayed for the mute config.
  late final Output<String> displayName;

  /// An expression that defines the filter to apply across create/update events of findings. While creating a filter string, be mindful of the scope in which the mute configuration is being created. E.g., If a filter contains project = X but is created under the project = Y scope, it might not match any findings. The following field and operator combinations are supported: * severity: `=`, `:` * category: `=`, `:` * resource.name: `=`, `:` * resource.project_name: `=`, `:` * resource.project_display_name: `=`, `:` * resource.folders.resource_folder: `=`, `:` * resource.parent_name: `=`, `:` * resource.parent_display_name: `=`, `:` * resource.type: `=`, `:` * finding_class: `=`, `:` * indicator.ip_addresses: `=`, `:` * indicator.domains: `=`, `:`
  late final Output<String> filter;

  /// Email address of the user who last edited the mute config. This field is set by the server and will be ignored if provided on config creation or update.
  late final Output<String> mostRecentEditor;

  /// Required. Unique identifier provided by the client within the parent scope. It must consist of only lowercase letters, numbers, and hyphens, must start with a letter, must end with either a letter or a number, and must be 63 characters or less.
  late final Output<String> muteConfigId;

  /// This field will be ignored if provided on config creation. Format "organizations/{organization}/muteConfigs/{mute_config}" "folders/{folder}/muteConfigs/{mute_config}" "projects/{project}/muteConfigs/{mute_config}" "organizations/{organization}/locations/global/muteConfigs/{mute_config}" "folders/{folder}/locations/global/muteConfigs/{mute_config}" "projects/{project}/locations/global/muteConfigs/{mute_config}"
  late final Output<String> name;
  late final Output<String> project;

  /// The most recent time at which the mute config was updated. This field is set by the server and will be ignored if provided on config creation or update.
  late final Output<String> updateTime;

  MuteConfig(
    String name, {
    MuteConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:securitycenter/v1:MuteConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.filter = registerOutput<String>('filter');
    this.mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.muteConfigId = registerOutput<String>('muteConfigId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
