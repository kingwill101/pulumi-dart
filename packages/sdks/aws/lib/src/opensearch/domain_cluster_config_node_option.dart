// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cluster_config_node_option_node_config.dart';

class DomainClusterConfigNodeOption {
  /// Container to specify sizing of a node type.
  final pulumi.Input<DomainClusterConfigNodeOptionNodeConfig>? nodeConfig;
  /// Type of node this configuration describes. Valid values: `coordinator`.
  final pulumi.Input<String>? nodeType;

  /// Creates a new [DomainClusterConfigNodeOption].
  /// [nodeConfig] Container to specify sizing of a node type.
  /// [nodeType] Type of node this configuration describes. Valid values: `coordinator`.
  const DomainClusterConfigNodeOption({
    this.nodeConfig,
    this.nodeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<DomainClusterConfigNodeOptionNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'nodeType': ?nodeType,
    };
  }

  factory DomainClusterConfigNodeOption.fromMap(Map<String, dynamic> map) {
    return DomainClusterConfigNodeOption(
      nodeConfig: (() { final guardedValue = map['nodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainClusterConfigNodeOptionNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

