// ignore_for_file: unused_element, unnecessary_cast

import 'domain_cluster_config_node_option_node_config.dart';

class DomainClusterConfigNodeOption {
  /// Container to specify sizing of a node type.
  final DomainClusterConfigNodeOptionNodeConfig? nodeConfig;

  /// Type of node this configuration describes. Valid values: `coordinator`.
  final String? nodeType;

  /// Creates a new [DomainClusterConfigNodeOption].
  /// [nodeConfig] Container to specify sizing of a node type.
  /// [nodeType] Type of node this configuration describes. Valid values: `coordinator`.
  DomainClusterConfigNodeOption({this.nodeConfig, this.nodeType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeConfig': ?nodeConfig == null ? null : nodeConfig!.toMap(),
      'nodeType': ?nodeType,
    };
  }

  factory DomainClusterConfigNodeOption.fromMap(Map<String, dynamic> map) {
    return DomainClusterConfigNodeOption(
      nodeConfig: map['nodeConfig'] == null
          ? null
          : DomainClusterConfigNodeOptionNodeConfig.fromMap(
              (map['nodeConfig'] as Map).cast<String, dynamic>(),
            ),
      nodeType: map['nodeType'] == null ? null : map['nodeType'] as String,
    );
  }
}
