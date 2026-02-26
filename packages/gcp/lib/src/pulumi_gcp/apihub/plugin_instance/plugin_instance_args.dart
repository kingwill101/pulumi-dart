// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../plugin_instance_action/plugin_instance_action.dart';
import '../plugin_instance_auth_config/plugin_instance_auth_config.dart';

/// The set of arguments for PluginInstance.
class PluginInstanceArgs {
  /// The action status for the plugin instance.
  /// Structure is documented below.
  final Input<List<PluginInstanceAction>>? actions;

  /// AuthConfig represents the authentication information.
  /// Structure is documented below.
  final Input<PluginInstanceAuthConfig>? authConfig;

  /// The display name for this plugin instance. Max length is 255 characters.
  final Input<bool>? disable;

  /// The display name for this plugin instance. Max length is 255 characters.
  final Input<String> displayName;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> plugin;

  /// The ID to use for the plugin instance, which will become the final
  /// component of the plugin instance's resource name. This field is optional.
  /// * If provided, the same will be used. The service will throw an error if
  /// the specified id is already used by another plugin instance in the plugin
  /// resource.
  /// * If not provided, a system generated id will be used.
  /// This value should be 4-63 characters, and valid characters
  /// are /a-z[0-9]-_/.
  final Input<String> pluginInstanceId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  PluginInstanceArgs({
    this.actions,
    this.authConfig,
    this.disable,
    required this.displayName,
    required this.location,
    required this.plugin,
    required this.pluginInstanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsValue = actions;
    if (actionsValue != null) {
      map['actions'] = Input.mapOptionalInputValue<List<PluginInstanceAction>,
              List<Map<String, dynamic>>>(
          actionsValue,
          (value) =>
              Input.encodeList<PluginInstanceAction, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final authConfigValue = authConfig;
    if (authConfigValue != null) {
      map['authConfig'] = Input.mapOptionalInputValue<PluginInstanceAuthConfig,
          Map<String, dynamic>>(authConfigValue, (value) => value.toMap());
    }
    final disableValue = disable;
    if (disableValue != null) {
      map['disable'] = disableValue;
    }
    map['displayName'] = displayName;
    map['location'] = location;
    map['plugin'] = plugin;
    map['pluginInstanceId'] = pluginInstanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory PluginInstanceArgs.fromMap(Map<String, dynamic> map) {
    return PluginInstanceArgs(
      actions:
          Input.asOptionalInput<List<PluginInstanceAction>>(map['actions']),
      authConfig:
          Input.asOptionalInput<PluginInstanceAuthConfig>(map['authConfig']),
      disable: Input.asOptionalInput<bool>(map['disable']),
      displayName: Input.asInput<String>(map['displayName']),
      location: Input.asInput<String>(map['location']),
      plugin: Input.asInput<String>(map['plugin']),
      pluginInstanceId: Input.asInput<String>(map['pluginInstanceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
