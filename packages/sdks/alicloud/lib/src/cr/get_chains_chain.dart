// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_chains_chain_chain_config.dart';

class GetChainsChain {
  /// The configuration of delivery chain.
  final List<GetChainsChainChainConfig> chainConfigs;
  /// The ID of delivery chain.
  final String chainId;
  /// The name of delivery chain.
  final String chainName;
  /// The creation time of delivery chain.
  final String createTime;
  /// The description of delivery chain.
  final String description;
  /// The resource ID of the delivery chain. The value formats as `<instance_id>:<chain_id>`.
  final String id;
  /// The ID of CR Enterprise Edition instance.
  final String instanceId;
  /// The modification time of delivery chain description.
  final String modifiedTime;
  /// Delivery chain scope ID.
  final String scopeId;
  /// Delivery chain scope type.
  final String scopeType;

  /// Creates a new [GetChainsChain].
  /// [chainConfigs] The configuration of delivery chain.
  /// [chainId] The ID of delivery chain.
  /// [chainName] The name of delivery chain.
  /// [createTime] The creation time of delivery chain.
  /// [description] The description of delivery chain.
  /// [id] The resource ID of the delivery chain. The value formats as `<instance_id>:<chain_id>`.
  /// [instanceId] The ID of CR Enterprise Edition instance.
  /// [modifiedTime] The modification time of delivery chain description.
  /// [scopeId] Delivery chain scope ID.
  /// [scopeType] Delivery chain scope type.
  GetChainsChain({
    required this.chainConfigs,
    required this.chainId,
    required this.chainName,
    required this.createTime,
    required this.description,
    required this.id,
    required this.instanceId,
    required this.modifiedTime,
    required this.scopeId,
    required this.scopeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chainConfigs': pulumi.Input.encodeList<GetChainsChainChainConfig, Map<String, dynamic>>(chainConfigs, (value) => value.toMap()),
      'chainId': chainId,
      'chainName': chainName,
      'createTime': createTime,
      'description': description,
      'id': id,
      'instanceId': instanceId,
      'modifiedTime': modifiedTime,
      'scopeId': scopeId,
      'scopeType': scopeType,
    };
  }

  factory GetChainsChain.fromMap(Map<String, dynamic> map) {
    return GetChainsChain(
      chainConfigs: pulumi.Input.decodeList<GetChainsChainChainConfig>(map['chainConfigs'], (value) => GetChainsChainChainConfig.fromMap((value as Map).cast<String, dynamic>())),
      chainId: map['chainId'] as String,
      chainName: map['chainName'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      modifiedTime: map['modifiedTime'] as String,
      scopeId: map['scopeId'] as String,
      scopeType: map['scopeType'] as String,
    );
  }
}

