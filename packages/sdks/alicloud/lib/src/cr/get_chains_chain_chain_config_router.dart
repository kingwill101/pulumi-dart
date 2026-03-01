// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_chains_chain_chain_config_router_from.dart';
import 'get_chains_chain_chain_config_router_to.dart';

class GetChainsChainChainConfigRouter {
  /// Source node.
  final List<GetChainsChainChainConfigRouterFrom> froms;
  /// Destination node.
  final List<GetChainsChainChainConfigRouterTo> tos;

  /// Creates a new [GetChainsChainChainConfigRouter].
  /// [froms] Source node.
  /// [tos] Destination node.
  GetChainsChainChainConfigRouter({
    required this.froms,
    required this.tos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'froms': pulumi.Input.encodeList<GetChainsChainChainConfigRouterFrom, Map<String, dynamic>>(froms, (value) => value.toMap()),
      'tos': pulumi.Input.encodeList<GetChainsChainChainConfigRouterTo, Map<String, dynamic>>(tos, (value) => value.toMap()),
    };
  }

  factory GetChainsChainChainConfigRouter.fromMap(Map<String, dynamic> map) {
    return GetChainsChainChainConfigRouter(
      froms: pulumi.Input.decodeList<GetChainsChainChainConfigRouterFrom>(map['froms'], (value) => GetChainsChainChainConfigRouterFrom.fromMap((value as Map).cast<String, dynamic>())),
      tos: pulumi.Input.decodeList<GetChainsChainChainConfigRouterTo>(map['tos'], (value) => GetChainsChainChainConfigRouterTo.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

