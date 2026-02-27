// ignore_for_file: unused_element, unnecessary_cast

import '../domain_cluster_config_node_option_node_config/domain_cluster_config_node_option_node_config.dart';

class DomainClusterConfigNodeOption {
  /// Container to specify sizing of a node type.
  final DomainClusterConfigNodeOptionNodeConfig? nodeConfig;

  /// Type of node this configuration describes. Valid values: `coordinator`.
  final String? nodeType;

  DomainClusterConfigNodeOption({
    this.nodeConfig,
    this.nodeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = nodeConfigValue.toMap();
    }
    final nodeTypeValue = nodeType;
    if (nodeTypeValue != null) {
      map['nodeType'] = nodeTypeValue;
    }
    return map;
  }

  factory DomainClusterConfigNodeOption.fromMap(Map<String, dynamic> map) {
    return DomainClusterConfigNodeOption(
      nodeConfig: map['nodeConfig'] == null
          ? null
          : DomainClusterConfigNodeOptionNodeConfig.fromMap(
              (map['nodeConfig'] as Map).cast<String, dynamic>()),
      nodeType: map['nodeType'] == null ? null : map['nodeType'] as String,
    );
  }
}
