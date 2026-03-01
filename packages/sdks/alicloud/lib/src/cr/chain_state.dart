// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'chain_chain_config.dart';

/// Input properties used for looking up and filtering Chain resources.
class ChainState {
  /// The configuration of delivery chain. See `chain_config` below. **NOTE:** This parameter must specify the correct value, otherwise the created resource will be incorrect.
  final pulumi.Input<List<ChainChainConfig>>? chainConfigs;
  /// Delivery chain ID.
  final pulumi.Input<String>? chainId;
  /// The name of delivery chain. The length of the name is 1-64 characters, lowercase English letters and numbers, and the separators "_", "-", "." can be used, noted that the separator cannot be at the first or last position.
  final pulumi.Input<String>? chainName;
  /// The description delivery chain.
  final pulumi.Input<String>? description;
  /// The ID of CR Enterprise Edition instance.
  final pulumi.Input<String>? instanceId;
  /// The name of CR Enterprise Edition repository. **NOTE:** This parameter must specify a correct value, otherwise the created resource will be incorrect.
  final pulumi.Input<String>? repoName;
  /// The name of CR Enterprise Edition namespace. **NOTE:** This parameter must specify the correct value, otherwise the created resource will be incorrect.
  final pulumi.Input<String>? repoNamespaceName;

  /// Creates a new [ChainState].
  /// [chainConfigs] The configuration of delivery chain. See `chain_config` below. **NOTE:** This parameter must specify the correct value, otherwise the created resource will be incorrect.
  /// [chainId] Delivery chain ID.
  /// [chainName] The name of delivery chain. The length of the name is 1-64 characters, lowercase English letters and numbers, and the separators "_", "-", "." can be used, noted that the separator cannot be at the first or last position.
  /// [description] The description delivery chain.
  /// [instanceId] The ID of CR Enterprise Edition instance.
  /// [repoName] The name of CR Enterprise Edition repository. **NOTE:** This parameter must specify a correct value, otherwise the created resource will be incorrect.
  /// [repoNamespaceName] The name of CR Enterprise Edition namespace. **NOTE:** This parameter must specify the correct value, otherwise the created resource will be incorrect.
  ChainState({
    pulumi.Output<List<ChainChainConfig>>? chainConfigs,
    pulumi.Output<String>? chainId,
    pulumi.Output<String>? chainName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? repoName,
    pulumi.Output<String>? repoNamespaceName,
  }) :
      chainConfigs = pulumi.Input.asOptionalInput<List<ChainChainConfig>>(chainConfigs),
      chainId = pulumi.Input.asOptionalInput<String>(chainId),
      chainName = pulumi.Input.asOptionalInput<String>(chainName),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      repoName = pulumi.Input.asOptionalInput<String>(repoName),
      repoNamespaceName = pulumi.Input.asOptionalInput<String>(repoNamespaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chainConfigs': ?pulumi.Input.mapOptionalInputValue<List<ChainChainConfig>, List<Map<String, dynamic>>>(chainConfigs, (value) => pulumi.Input.encodeList<ChainChainConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chainId': ?chainId,
      'chainName': ?chainName,
      'description': ?description,
      'instanceId': ?instanceId,
      'repoName': ?repoName,
      'repoNamespaceName': ?repoNamespaceName,
    };
  }

  factory ChainState.fromMap(Map<String, dynamic> map) {
    return ChainState(
      chainConfigs: map['chainConfigs'] == null ? null : pulumi.Output.create<List<ChainChainConfig>>(pulumi.Input.decodeList<ChainChainConfig>(map['chainConfigs'], (value) => ChainChainConfig.fromMap((value as Map).cast<String, dynamic>()))),
      chainId: map['chainId'] == null ? null : pulumi.Output.create<String>(map['chainId'] as String),
      chainName: map['chainName'] == null ? null : pulumi.Output.create<String>(map['chainName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      repoName: map['repoName'] == null ? null : pulumi.Output.create<String>(map['repoName'] as String),
      repoNamespaceName: map['repoNamespaceName'] == null ? null : pulumi.Output.create<String>(map['repoNamespaceName'] as String),
    );
  }
}

