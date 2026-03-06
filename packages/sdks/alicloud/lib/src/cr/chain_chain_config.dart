// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'chain_chain_config_node.dart';
import 'chain_chain_config_router.dart';

class ChainChainConfig {
  /// Each node in the delivery chain. See `nodes` below.
  ///
  /// &gt; **NOTE:** The `from` and `to` fields are all fixed, and their structure and the value of `node_name` are fixed. You can refer to the template given in the example for configuration.
  final pulumi.Input<List<ChainChainConfigNode>>? nodes;
  /// Execution sequence relationship between delivery chain nodes. See `routers` below.
  final pulumi.Input<List<ChainChainConfigRouter>>? routers;

  /// Creates a new [ChainChainConfig].
  /// [nodes] Each node in the delivery chain. See `nodes` below.
  /// [routers] Execution sequence relationship between delivery chain nodes. See `routers` below.
  const ChainChainConfig({
    this.nodes,
    this.routers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<ChainChainConfigNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<ChainChainConfigNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routers': ?pulumi.Input.mapOptionalInputValue<List<ChainChainConfigRouter>, List<Map<String, dynamic>>>(routers, (value) => pulumi.Input.encodeList<ChainChainConfigRouter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChainChainConfig.fromMap(Map<String, dynamic> map) {
    return ChainChainConfig(
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChainChainConfigNode>(guardedValue, (value) => ChainChainConfigNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      routers: (() { final guardedValue = map['routers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChainChainConfigRouter>(guardedValue, (value) => ChainChainConfigRouter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

