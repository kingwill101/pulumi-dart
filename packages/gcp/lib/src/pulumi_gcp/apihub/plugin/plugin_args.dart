// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../plugin_actions_config/plugin_actions_config.dart';
import '../plugin_config_template/plugin_config_template.dart';
import '../plugin_documentation/plugin_documentation.dart';
import '../plugin_hosting_service/plugin_hosting_service.dart';

/// The set of arguments for Plugin.
class PluginArgs {
  /// The configuration of actions supported by the plugin.
  /// Structure is documented below.
  final Input<List<PluginActionsConfig>>? actionsConfigs;

  /// ConfigTemplate represents the configuration template for a plugin.
  /// Structure is documented below.
  final Input<PluginConfigTemplate>? configTemplate;

  /// The plugin description. Max length is 2000 characters (Unicode code
  /// points).
  final Input<String>? description;

  /// The display name of the plugin. Max length is 50 characters (Unicode code
  /// points).
  final Input<String> displayName;

  /// Documentation details.
  /// Structure is documented below.
  final Input<PluginDocumentation>? documentation;

  /// The information related to the service implemented by the plugin
  /// developer, used to invoke the plugin's functionality.
  /// Structure is documented below.
  final Input<PluginHostingService>? hostingService;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// Possible values:
  /// PLUGIN_CATEGORY_UNSPECIFIED
  /// API_GATEWAY
  /// API_PRODUCER
  final Input<String>? pluginCategory;

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
  final Input<String> pluginId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  PluginArgs({
    this.actionsConfigs,
    this.configTemplate,
    this.description,
    required this.displayName,
    this.documentation,
    this.hostingService,
    required this.location,
    this.pluginCategory,
    required this.pluginId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsConfigsValue = actionsConfigs;
    if (actionsConfigsValue != null) {
      map['actionsConfigs'] = Input.mapOptionalInputValue<
              List<PluginActionsConfig>, List<Map<String, dynamic>>>(
          actionsConfigsValue,
          (value) =>
              Input.encodeList<PluginActionsConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final configTemplateValue = configTemplate;
    if (configTemplateValue != null) {
      map['configTemplate'] = Input.mapOptionalInputValue<PluginConfigTemplate,
          Map<String, dynamic>>(configTemplateValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final documentationValue = documentation;
    if (documentationValue != null) {
      map['documentation'] = Input.mapOptionalInputValue<PluginDocumentation,
          Map<String, dynamic>>(documentationValue, (value) => value.toMap());
    }
    final hostingServiceValue = hostingService;
    if (hostingServiceValue != null) {
      map['hostingService'] = Input.mapOptionalInputValue<PluginHostingService,
          Map<String, dynamic>>(hostingServiceValue, (value) => value.toMap());
    }
    map['location'] = location;
    final pluginCategoryValue = pluginCategory;
    if (pluginCategoryValue != null) {
      map['pluginCategory'] = pluginCategoryValue;
    }
    map['pluginId'] = pluginId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory PluginArgs.fromMap(Map<String, dynamic> map) {
    return PluginArgs(
      actionsConfigs: Input.asOptionalInput<List<PluginActionsConfig>>(
          map['actionsConfigs']),
      configTemplate:
          Input.asOptionalInput<PluginConfigTemplate>(map['configTemplate']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      documentation:
          Input.asOptionalInput<PluginDocumentation>(map['documentation']),
      hostingService:
          Input.asOptionalInput<PluginHostingService>(map['hostingService']),
      location: Input.asInput<String>(map['location']),
      pluginCategory: Input.asOptionalInput<String>(map['pluginCategory']),
      pluginId: Input.asInput<String>(map['pluginId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
