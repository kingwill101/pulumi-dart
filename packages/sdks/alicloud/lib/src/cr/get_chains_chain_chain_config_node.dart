// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_chains_chain_chain_config_node_node_config.dart';

class GetChainsChainChainConfigNode {
  /// Whether to enable the delivery chain node. Valid values: `true`, `false`.
  final pulumi.Input<bool> enable;
  /// The configuration of delivery chain node.
  final pulumi.Input<List<GetChainsChainChainConfigNodeNodeConfig>> nodeConfigs;
  /// The name of delivery chain node.
  final pulumi.Input<String> nodeName;

  /// Creates a new [GetChainsChainChainConfigNode].
  /// [enable] Whether to enable the delivery chain node. Valid values: `true`, `false`.
  /// [nodeConfigs] The configuration of delivery chain node.
  /// [nodeName] The name of delivery chain node.
  const GetChainsChainChainConfigNode({
    required this.enable,
    required this.nodeConfigs,
    required this.nodeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
      'nodeConfigs': pulumi.Input.mapInputValue<List<GetChainsChainChainConfigNodeNodeConfig>, List<Map<String, dynamic>>>(nodeConfigs, (value) => pulumi.Input.encodeList<GetChainsChainChainConfigNodeNodeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeName': nodeName,
    };
  }

  factory GetChainsChainChainConfigNode.fromMap(Map<String, dynamic> map) {
    return GetChainsChainChainConfigNode(
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      nodeConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetChainsChainChainConfigNodeNodeConfig>(map['nodeConfigs']!, (value) => GetChainsChainChainConfigNodeNodeConfig.fromMap((value as Map).cast<String, dynamic>()))),
      nodeName: pulumi.Input.fromValue(map['nodeName'] as String),
    );
  }
}

