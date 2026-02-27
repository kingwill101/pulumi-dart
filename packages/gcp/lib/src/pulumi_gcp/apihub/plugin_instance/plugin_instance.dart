import 'package:pulumi/pulumi.dart';
import '../plugin_instance_action/plugin_instance_action.dart';
import '../plugin_instance_auth_config/plugin_instance_auth_config.dart';
import 'plugin_instance_args.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Apihub Plugin Instance Basic
///
///
///
///
/// ## Import
///
/// PluginInstance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/plugins/{{plugin}}/instances/{{plugin_instance_id}}`
///
/// * `{{project}}/{{location}}/{{plugin}}/{{plugin_instance_id}}`
///
/// * `{{location}}/{{plugin}}/{{plugin_instance_id}}`
///
/// When using the `pulumi import` command, PluginInstance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apihub/pluginInstance:PluginInstance default projects/{{project}}/locations/{{location}}/plugins/{{plugin}}/instances/{{plugin_instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/pluginInstance:PluginInstance default {{project}}/{{location}}/{{plugin}}/{{plugin_instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/pluginInstance:PluginInstance default {{location}}/{{plugin}}/{{plugin_instance_id}}
/// ```
class PluginInstance extends CustomResource {
  /// The action status for the plugin instance.
  /// Structure is documented below.
  late final Output<List<PluginInstanceAction>> actions;

  /// AuthConfig represents the authentication information.
  /// Structure is documented below.
  late final Output<PluginInstanceAuthConfig?> authConfig;

  /// Timestamp indicating when the plugin instance was created.
  late final Output<String> createTime;

  /// The display name for this plugin instance. Max length is 255 characters.
  late final Output<bool?> disable;

  /// The display name for this plugin instance. Max length is 255 characters.
  late final Output<String> displayName;

  /// Error message describing the failure, if any, during Create, Delete or
  /// ApplyConfig operation corresponding to the plugin instance.This field will
  /// only be populated if the plugin instance is in the ERROR or FAILED state.
  late final Output<String> errorMessage;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Identifier. The unique name of the plugin instance resource.
  /// Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}`
  late final Output<String> name;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> plugin;

  /// The ID to use for the plugin instance, which will become the final
  /// component of the plugin instance's resource name. This field is optional.
  /// * If provided, the same will be used. The service will throw an error if
  /// the specified id is already used by another plugin instance in the plugin
  /// resource.
  /// * If not provided, a system generated id will be used.
  /// This value should be 4-63 characters, and valid characters
  /// are /a-z[0-9]-_/.
  late final Output<String> pluginInstanceId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The current state of the plugin instance (e.g., enabled, disabled,
  /// provisioning).
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// APPLYING_CONFIG
  /// ERROR
  /// FAILED
  /// DELETING
  late final Output<String> state;

  /// Timestamp indicating when the plugin instance was last updated.
  late final Output<String> updateTime;

  PluginInstance(
    String name, {
    PluginInstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/pluginInstance:PluginInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actions = registerOutput<List<PluginInstanceAction>>('actions');
    this.authConfig = registerOutput<PluginInstanceAuthConfig?>('authConfig');
    this.createTime = registerOutput<String>('createTime');
    this.disable = registerOutput<bool?>('disable');
    this.displayName = registerOutput<String>('displayName');
    this.errorMessage = registerOutput<String>('errorMessage');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.plugin = registerOutput<String>('plugin');
    this.pluginInstanceId = registerOutput<String>('pluginInstanceId');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
