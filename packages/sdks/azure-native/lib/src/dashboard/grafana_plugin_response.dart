// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Plugin of Grafana
class GrafanaPluginResponse {
  /// Grafana plugin id
  final pulumi.Input<String> pluginId;

  /// Creates a new [GrafanaPluginResponse].
  /// [pluginId] Grafana plugin id
  GrafanaPluginResponse({required this.pluginId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pluginId': pluginId};
  }

  factory GrafanaPluginResponse.fromMap(Map<String, dynamic> map) {
    return GrafanaPluginResponse(
      pluginId: pulumi.Input.fromValue(map['pluginId'] as String),
    );
  }
}
