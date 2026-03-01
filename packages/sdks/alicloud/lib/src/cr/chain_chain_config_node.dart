// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'chain_chain_config_node_node_config.dart';

class ChainChainConfigNode {
  /// Whether to enable the delivery chain node. Valid values: `true`, `false`.
  final bool? enable;
  /// The configuration of delivery chain node. See `node_config` below.
  final List<ChainChainConfigNodeNodeConfig>? nodeConfigs;
  /// The name of delivery chain node.
  final String? nodeName;

  /// Creates a new [ChainChainConfigNode].
  /// [enable] Whether to enable the delivery chain node. Valid values: `true`, `false`.
  /// [nodeConfigs] The configuration of delivery chain node. See `node_config` below.
  /// [nodeName] The name of delivery chain node.
  ChainChainConfigNode({
    this.enable,
    this.nodeConfigs,
    this.nodeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'nodeConfigs': ?nodeConfigs == null ? null : pulumi.Input.encodeList<ChainChainConfigNodeNodeConfig, Map<String, dynamic>>(nodeConfigs!, (value) => value.toMap()),
      'nodeName': ?nodeName,
    };
  }

  factory ChainChainConfigNode.fromMap(Map<String, dynamic> map) {
    return ChainChainConfigNode(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      nodeConfigs: map['nodeConfigs'] == null ? null : pulumi.Input.decodeList<ChainChainConfigNodeNodeConfig>(map['nodeConfigs'], (value) => ChainChainConfigNodeNodeConfig.fromMap((value as Map).cast<String, dynamic>())),
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
    );
  }
}

