import 'package:pulumi/pulumi.dart';
import '../plugin_actions_config/plugin_actions_config.dart';
import '../plugin_config_template/plugin_config_template.dart';
import '../plugin_documentation/plugin_documentation.dart';
import '../plugin_hosting_service/plugin_hosting_service.dart';
import 'plugin_args.dart';

/// A plugin resource in the API hub.
///
///
///
/// ## Example Usage
///
/// ### Apihub Plugin Full
///
///
///
///
/// ## Import
///
/// Plugin can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/plugins/{{plugin_id}}`
///
/// * `{{project}}/{{location}}/{{plugin_id}}`
///
/// * `{{location}}/{{plugin_id}}`
///
/// When using the `pulumi import` command, Plugin can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apihub/plugin:Plugin default projects/{{project}}/locations/{{location}}/plugins/{{plugin_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/plugin:Plugin default {{project}}/{{location}}/{{plugin_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/plugin:Plugin default {{location}}/{{plugin_id}}
/// ```
class Plugin extends CustomResource {
  /// The configuration of actions supported by the plugin.
  /// Structure is documented below.
  late final Output<List<PluginActionsConfig>?> actionsConfigs;

  /// ConfigTemplate represents the configuration template for a plugin.
  /// Structure is documented below.
  late final Output<PluginConfigTemplate> configTemplate;

  /// Timestamp indicating when the plugin was created.
  late final Output<String> createTime;

  /// The plugin description. Max length is 2000 characters (Unicode code
  /// points).
  late final Output<String?> description;

  /// The display name of the plugin. Max length is 50 characters (Unicode code
  /// points).
  late final Output<String> displayName;

  /// Documentation details.
  /// Structure is documented below.
  late final Output<PluginDocumentation?> documentation;

  /// The information related to the service implemented by the plugin
  /// developer, used to invoke the plugin's functionality.
  /// Structure is documented below.
  late final Output<PluginHostingService?> hostingService;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Identifier. The name of the plugin.
  /// Format: `projects/{project}/locations/{location}/plugins/{plugin}`
  late final Output<String> name;

  /// The type of the plugin, indicating whether it is 'SYSTEM_OWNED' or
  /// 'USER_OWNED'.
  /// Possible values:
  /// OWNERSHIP_TYPE_UNSPECIFIED
  /// SYSTEM_OWNED
  /// USER_OWNED
  late final Output<String> ownershipType;

  /// Possible values:
  /// PLUGIN_CATEGORY_UNSPECIFIED
  /// API_GATEWAY
  /// API_PRODUCER
  late final Output<String?> pluginCategory;

  /// The ID to use for the Plugin resource, which will become the final
  /// component of the Plugin's resource name. This field is optional.
  /// * If provided, the same will be used. The service will throw an error if
  /// the specified id is already used by another Plugin resource in the API hub
  /// instance.
  /// * If not provided, a system generated id will be used.
  /// This value should be 4-63 characters, overall resource name which will be
  /// of format
  /// `projects/{project}/locations/{location}/plugins/{plugin}`,
  /// its length is limited to 1000 characters and valid characters are
  /// /a-z[0-9]-_/.
  late final Output<String> pluginId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Represents the state of the plugin.
  /// Note this field will not be set for plugins developed via plugin
  /// framework as the state will be managed at plugin instance level.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ENABLED
  /// DISABLED
  late final Output<String> state;

  /// Timestamp indicating when the plugin was last updated.
  late final Output<String> updateTime;

  Plugin(
    String name, {
    PluginArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/plugin:Plugin',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actionsConfigs =
        registerOutput<List<PluginActionsConfig>?>('actionsConfigs');
    this.configTemplate =
        registerOutput<PluginConfigTemplate>('configTemplate');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.documentation = registerOutput<PluginDocumentation?>('documentation');
    this.hostingService =
        registerOutput<PluginHostingService?>('hostingService');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.ownershipType = registerOutput<String>('ownershipType');
    this.pluginCategory = registerOutput<String?>('pluginCategory');
    this.pluginId = registerOutput<String>('pluginId');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
