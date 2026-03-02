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
    this.chainConfigs,
    required this.chainName,
    this.description,
    required this.instanceId,
    this.repoName,
    this.repoNamespaceName,
  });

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
      chainConfigs: map['chainConfigs'] == null ? null : (pulumi.Input.decodeList<ChainChainConfig>(map['chainConfigs']!, (value) => ChainChainConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chainName: (map['chainName'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      repoName: map['repoName'] == null ? null : (map['repoName']! as String).input(),
      repoNamespaceName: map['repoNamespaceName'] == null ? null : (map['repoNamespaceName']! as String).input(),
    );
  }
}

