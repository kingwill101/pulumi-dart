// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'chain_chain_config.dart';

/// {@template pulumi_cr_chain_chain_args_doc}
/// The set of arguments for Chain.
/// {@endtemplate}
/// {@macro pulumi_cr_chain_chain_args_doc}
class ChainArgs {
  /// The configuration of delivery chain. See `chain_config` below. **NOTE:** This parameter must specify the correct value, otherwise the created resource will be incorrect.
  final pulumi.Input<List<ChainChainConfig>>? chainConfigs;
  /// The name of delivery chain. The length of the name is 1-64 characters, lowercase English letters and numbers, and the separators "_", "-", "." can be used, noted that the separator cannot be at the first or last position.
  final pulumi.Input<String> chainName;
  /// The description delivery chain.
  final pulumi.Input<String>? description;
  /// The ID of CR Enterprise Edition instance.
  final pulumi.Input<String> instanceId;
  /// The name of CR Enterprise Edition repository. **NOTE:** This parameter must specify a correct value, otherwise the created resource will be incorrect.
  final pulumi.Input<String>? repoName;
  /// The name of CR Enterprise Edition namespace. **NOTE:** This parameter must specify the correct value, otherwise the created resource will be incorrect.
  final pulumi.Input<String>? repoNamespaceName;

  /// Creates a new [ChainArgs].
  /// [chainConfigs] The configuration of delivery chain. See `chain_config` below. **NOTE:** This parameter must specify the correct value, otherwise the created resource will be incorrect.
  /// [chainName] The name of delivery chain. The length of the name is 1-64 characters, lowercase English letters and numbers, and the separators "_", "-", "." can be used, noted that the separator cannot be at the first or last position.
  /// [description] The description delivery chain.
  /// [instanceId] The ID of CR Enterprise Edition instance.
  /// [repoName] The name of CR Enterprise Edition repository. **NOTE:** This parameter must specify a correct value, otherwise the created resource will be incorrect.
  /// [repoNamespaceName] The name of CR Enterprise Edition namespace. **NOTE:** This parameter must specify the correct value, otherwise the created resource will be incorrect.
  ChainArgs({
    pulumi.Output<List<ChainChainConfig>>? chainConfigs,
    required pulumi.Output<String> chainName,
    pulumi.Output<String>? description,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? repoName,
    pulumi.Output<String>? repoNamespaceName,
  }) :
      chainConfigs = pulumi.Input.asOptionalInput<List<ChainChainConfig>>(chainConfigs),
      chainName = pulumi.Input.asInput<String>(chainName),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      repoName = pulumi.Input.asOptionalInput<String>(repoName),
      repoNamespaceName = pulumi.Input.asOptionalInput<String>(repoNamespaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chainConfigs': ?pulumi.Input.mapOptionalInputValue<List<ChainChainConfig>, List<Map<String, dynamic>>>(chainConfigs, (value) => pulumi.Input.encodeList<ChainChainConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chainName': chainName,
      'description': ?description,
      'instanceId': instanceId,
      'repoName': ?repoName,
      'repoNamespaceName': ?repoNamespaceName,
    };
  }

  factory ChainArgs.fromMap(Map<String, dynamic> map) {
    return ChainArgs(
      chainConfigs: map['chainConfigs'] == null ? null : pulumi.Output.create<List<ChainChainConfig>>(pulumi.Input.decodeList<ChainChainConfig>(map['chainConfigs'], (value) => ChainChainConfig.fromMap((value as Map).cast<String, dynamic>()))),
      chainName: pulumi.Output.create<String>(map['chainName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      repoName: map['repoName'] == null ? null : pulumi.Output.create<String>(map['repoName'] as String),
      repoNamespaceName: map['repoNamespaceName'] == null ? null : pulumi.Output.create<String>(map['repoNamespaceName'] as String),
    );
  }
}

