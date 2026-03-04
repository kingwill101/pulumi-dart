// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_chains_chain_chain_config.dart';

class GetChainsChain {
  /// The configuration of delivery chain.
  final pulumi.Input<List<GetChainsChainChainConfig>> chainConfigs;

  /// The ID of delivery chain.
  final pulumi.Input<String> chainId;

  /// The name of delivery chain.
  final pulumi.Input<String> chainName;

  /// The creation time of delivery chain.
  final pulumi.Input<String> createTime;

  /// The description of delivery chain.
  final pulumi.Input<String> description;

  /// The resource ID of the delivery chain. The value formats as `&lt;instance_id&gt;:&lt;chain_id&gt;`.
  final pulumi.Input<String> id;

  /// The ID of CR Enterprise Edition instance.
  final pulumi.Input<String> instanceId;

  /// The modification time of delivery chain description.
  final pulumi.Input<String> modifiedTime;

  /// Delivery chain scope ID.
  final pulumi.Input<String> scopeId;

  /// Delivery chain scope type.
  final pulumi.Input<String> scopeType;

  /// Creates a new [GetChainsChain].
  /// [chainConfigs] The configuration of delivery chain.
  /// [chainId] The ID of delivery chain.
  /// [chainName] The name of delivery chain.
  /// [createTime] The creation time of delivery chain.
  /// [description] The description of delivery chain.
  /// [id] The resource ID of the delivery chain. The value formats as `&lt;instance_id&gt;:&lt;chain_id&gt;`.
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
      'chainConfigs':
          pulumi.Input.mapInputValue<
            List<GetChainsChainChainConfig>,
            List<Map<String, dynamic>>
          >(
            chainConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetChainsChainChainConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      chainConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetChainsChainChainConfig>(
          map['chainConfigs']!,
          (value) => GetChainsChainChainConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      chainId: pulumi.Input.fromValue(map['chainId'] as String),
      chainName: pulumi.Input.fromValue(map['chainName'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      modifiedTime: pulumi.Input.fromValue(map['modifiedTime'] as String),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
      scopeType: pulumi.Input.fromValue(map['scopeType'] as String),
    );
  }
}
