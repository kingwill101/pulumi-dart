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
    this.chainConfigs,
    this.chainId,
    this.chainName,
    this.description,
    this.instanceId,
    this.repoName,
    this.repoNamespaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chainConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<ChainChainConfig>,
            List<Map<String, dynamic>>
          >(
            chainConfigs,
            (value) =>
                pulumi.Input.encodeList<ChainChainConfig, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
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
      chainConfigs: (() {
        final guardedValue = map['chainConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ChainChainConfig>(
            guardedValue,
            (value) => ChainChainConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      chainId: (() {
        final guardedValue = map['chainId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      chainName: (() {
        final guardedValue = map['chainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repoName: (() {
        final guardedValue = map['repoName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repoNamespaceName: (() {
        final guardedValue = map['repoNamespaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
