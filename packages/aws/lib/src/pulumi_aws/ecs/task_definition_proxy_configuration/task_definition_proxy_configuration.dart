// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionProxyConfiguration {
  /// Name of the container that will serve as the App Mesh proxy.
  final String containerName;

  /// Set of network configuration parameters to provide the Container Network Interface (CNI) plugin, specified a key-value mapping.
  final Map<String, String>? properties;

  /// Proxy type. The default value is `APPMESH`. The only supported value is `APPMESH`.
  final String? type;

  TaskDefinitionProxyConfiguration({
    required this.containerName,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerName'] = containerName;
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory TaskDefinitionProxyConfiguration.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionProxyConfiguration(
      containerName: map['containerName'] as String,
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
