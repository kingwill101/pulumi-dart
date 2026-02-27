// ignore_for_file: unused_element, unnecessary_cast

import '../connector_plugin_custom_plugin/connector_plugin_custom_plugin.dart';

class ConnectorPlugin {
  /// Details about a custom plugin. See `custom_plugin` Block for details.
  final ConnectorPluginCustomPlugin customPlugin;

  ConnectorPlugin({
    required this.customPlugin,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customPlugin'] = customPlugin.toMap();
    return map;
  }

  factory ConnectorPlugin.fromMap(Map<String, dynamic> map) {
    return ConnectorPlugin(
      customPlugin: ConnectorPluginCustomPlugin.fromMap(
          (map['customPlugin'] as Map).cast<String, dynamic>()),
    );
  }
}
