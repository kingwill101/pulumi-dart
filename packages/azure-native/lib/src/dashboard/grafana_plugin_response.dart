// ignore_for_file: unused_element, unnecessary_cast


/// Plugin of Grafana
class GrafanaPluginResponse {
  /// Grafana plugin id
  final String pluginId;

  /// Creates a new [GrafanaPluginResponse].
  /// [pluginId] Grafana plugin id
  GrafanaPluginResponse({
    required this.pluginId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pluginId': pluginId,
    };
  }

  factory GrafanaPluginResponse.fromMap(Map<String, dynamic> map) {
    return GrafanaPluginResponse(
      pluginId: map['pluginId'] as String,
    );
  }
}

