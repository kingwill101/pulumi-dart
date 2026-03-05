// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'chain_chain_config_node_node_config.dart';

class ChainChainConfigNode {
  /// Whether to enable the delivery chain node. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enable;
  /// The configuration of delivery chain node. See `node_config` below.
  final pulumi.Input<List<ChainChainConfigNodeNodeConfig>>? nodeConfigs;
  /// The name of delivery chain node.
  final pulumi.Input<String>? nodeName;

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
      'nodeConfigs': ?pulumi.Input.mapOptionalInputValue<List<ChainChainConfigNodeNodeConfig>, List<Map<String, dynamic>>>(nodeConfigs, (value) => pulumi.Input.encodeList<ChainChainConfigNodeNodeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeName': ?nodeName,
    };
  }

  factory ChainChainConfigNode.fromMap(Map<String, dynamic> map) {
    return ChainChainConfigNode(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nodeConfigs: (() { final guardedValue = map['nodeConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChainChainConfigNodeNodeConfig>(guardedValue, (value) => ChainChainConfigNodeNodeConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

