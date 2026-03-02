// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'chain_chain_config_router_from.dart';
import 'chain_chain_config_router_to.dart';

class ChainChainConfigRouter {
  /// Source node. See `from` below.
  final pulumi.Input<List<ChainChainConfigRouterFrom>>? froms;
  /// Destination node. See `to` below.
  final pulumi.Input<List<ChainChainConfigRouterTo>>? tos;

  /// Creates a new [ChainChainConfigRouter].
  /// [froms] Source node. See `from` below.
  /// [tos] Destination node. See `to` below.
  ChainChainConfigRouter({
    this.froms,
    this.tos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'froms': ?pulumi.Input.mapOptionalInputValue<List<ChainChainConfigRouterFrom>, List<Map<String, dynamic>>>(froms, (value) => pulumi.Input.encodeList<ChainChainConfigRouterFrom, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tos': ?pulumi.Input.mapOptionalInputValue<List<ChainChainConfigRouterTo>, List<Map<String, dynamic>>>(tos, (value) => pulumi.Input.encodeList<ChainChainConfigRouterTo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChainChainConfigRouter.fromMap(Map<String, dynamic> map) {
    return ChainChainConfigRouter(
      froms: map['froms'] == null ? null : (pulumi.Input.decodeList<ChainChainConfigRouterFrom>(map['froms']!, (value) => ChainChainConfigRouterFrom.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tos: map['tos'] == null ? null : (pulumi.Input.decodeList<ChainChainConfigRouterTo>(map['tos']!, (value) => ChainChainConfigRouterTo.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

