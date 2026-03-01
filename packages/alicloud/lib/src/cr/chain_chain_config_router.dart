// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'chain_chain_config_router_from.dart';
import 'chain_chain_config_router_to.dart';

class ChainChainConfigRouter {
  /// Source node. See `from` below.
  final List<ChainChainConfigRouterFrom>? froms;
  /// Destination node. See `to` below.
  final List<ChainChainConfigRouterTo>? tos;

  /// Creates a new [ChainChainConfigRouter].
  /// [froms] Source node. See `from` below.
  /// [tos] Destination node. See `to` below.
  ChainChainConfigRouter({
    this.froms,
    this.tos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'froms': ?froms == null ? null : pulumi.Input.encodeList<ChainChainConfigRouterFrom, Map<String, dynamic>>(froms!, (value) => value.toMap()),
      'tos': ?tos == null ? null : pulumi.Input.encodeList<ChainChainConfigRouterTo, Map<String, dynamic>>(tos!, (value) => value.toMap()),
    };
  }

  factory ChainChainConfigRouter.fromMap(Map<String, dynamic> map) {
    return ChainChainConfigRouter(
      froms: map['froms'] == null ? null : pulumi.Input.decodeList<ChainChainConfigRouterFrom>(map['froms'], (value) => ChainChainConfigRouterFrom.fromMap((value as Map).cast<String, dynamic>())),
      tos: map['tos'] == null ? null : pulumi.Input.decodeList<ChainChainConfigRouterTo>(map['tos'], (value) => ChainChainConfigRouterTo.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

