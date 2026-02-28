// ignore_for_file: unused_element, unnecessary_cast


class GetTaskDefinitionProxyConfiguration {
  /// Name of the container that will serve as the App Mesh proxy.
  final String containerName;
  /// Set of network configuration parameters to provide the Container Network Interface (CNI) plugin, specified a key-value mapping.
  final Map<String, String> properties;
  /// Proxy type. The default value is `APPMESH`. The only supported value is `APPMESH`.
  final String type;

  /// Creates a new [GetTaskDefinitionProxyConfiguration].
  /// [containerName] Name of the container that will serve as the App Mesh proxy.
  /// [properties] Set of network configuration parameters to provide the Container Network Interface (CNI) plugin, specified a key-value mapping.
  /// [type] Proxy type. The default value is `APPMESH`. The only supported value is `APPMESH`.
  GetTaskDefinitionProxyConfiguration({
    required this.containerName,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'properties': properties,
      'type': type,
    };
  }

  factory GetTaskDefinitionProxyConfiguration.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionProxyConfiguration(
      containerName: map['containerName'] as String,
      properties: (map['properties'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

