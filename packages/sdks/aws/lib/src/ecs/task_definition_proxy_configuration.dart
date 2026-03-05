// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionProxyConfiguration {
  /// Name of the container that will serve as the App Mesh proxy.
  final pulumi.Input<String> containerName;
  /// Set of network configuration parameters to provide the Container Network Interface (CNI) plugin, specified a key-value mapping.
  final pulumi.Input<Map<String, String>>? properties;
  /// Proxy type. The default value is `APPMESH`. The only supported value is `APPMESH`.
  final pulumi.Input<String>? type;

  /// Creates a new [TaskDefinitionProxyConfiguration].
  /// [containerName] Name of the container that will serve as the App Mesh proxy.
  /// [properties] Set of network configuration parameters to provide the Container Network Interface (CNI) plugin, specified a key-value mapping.
  /// [type] Proxy type. The default value is `APPMESH`. The only supported value is `APPMESH`.
  TaskDefinitionProxyConfiguration({
    required this.containerName,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'properties': ?properties,
      'type': ?type,
    };
  }

  factory TaskDefinitionProxyConfiguration.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionProxyConfiguration(
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

