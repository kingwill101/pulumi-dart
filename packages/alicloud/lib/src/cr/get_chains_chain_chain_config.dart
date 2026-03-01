// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_chains_chain_chain_config_node.dart';
import 'get_chains_chain_chain_config_router.dart';

class GetChainsChainChainConfig {
  /// Each node in the delivery chain.
  final List<GetChainsChainChainConfigNode> nodes;
  /// Execution sequence relationship between delivery chain nodes.
  final List<GetChainsChainChainConfigRouter> routers;

  /// Creates a new [GetChainsChainChainConfig].
  /// [nodes] Each node in the delivery chain.
  /// [routers] Execution sequence relationship between delivery chain nodes.
  GetChainsChainChainConfig({
    required this.nodes,
    required this.routers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodes': pulumi.Input.encodeList<GetChainsChainChainConfigNode, Map<String, dynamic>>(nodes, (value) => value.toMap()),
      'routers': pulumi.Input.encodeList<GetChainsChainChainConfigRouter, Map<String, dynamic>>(routers, (value) => value.toMap()),
    };
  }

  factory GetChainsChainChainConfig.fromMap(Map<String, dynamic> map) {
    return GetChainsChainChainConfig(
      nodes: pulumi.Input.decodeList<GetChainsChainChainConfigNode>(map['nodes'], (value) => GetChainsChainChainConfigNode.fromMap((value as Map).cast<String, dynamic>())),
      routers: pulumi.Input.decodeList<GetChainsChainChainConfigRouter>(map['routers'], (value) => GetChainsChainChainConfigRouter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

