// ignore_for_file: unused_element, unnecessary_cast

import 'connector_plugin_custom_plugin.dart';

class ConnectorPlugin {
  /// Details about a custom plugin. See `custom_plugin` Block for details.
  final ConnectorPluginCustomPlugin customPlugin;

  /// Creates a new [ConnectorPlugin].
  /// [customPlugin] Details about a custom plugin. See `custom_plugin` Block for details.
  ConnectorPlugin({required this.customPlugin});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'customPlugin': customPlugin.toMap()};
  }

  factory ConnectorPlugin.fromMap(Map<String, dynamic> map) {
    return ConnectorPlugin(
      customPlugin: ConnectorPluginCustomPlugin.fromMap(
        (map['customPlugin'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
