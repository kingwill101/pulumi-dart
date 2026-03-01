// ignore_for_file: unused_element, unnecessary_cast

import 'config_map_node_config_source.dart';

/// NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil. This API is deprecated since 1.22
class NodeConfigSource {
  /// ConfigMap is a reference to a Node's ConfigMap
  final ConfigMapNodeConfigSource? configMap;

  /// Creates a new [NodeConfigSource].
  /// [configMap] ConfigMap is a reference to a Node's ConfigMap
  NodeConfigSource({
    this.configMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMap': ?configMap == null ? null : configMap!.toMap(),
    };
  }

  factory NodeConfigSource.fromMap(Map<String, dynamic> map) {
    return NodeConfigSource(
      configMap: map['configMap'] == null ? null : ConfigMapNodeConfigSource.fromMap((map['configMap'] as Map).cast<String, dynamic>()),
    );
  }
}

