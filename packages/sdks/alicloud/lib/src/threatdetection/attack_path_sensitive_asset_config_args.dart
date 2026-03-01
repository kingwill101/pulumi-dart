// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attack_path_sensitive_asset_config_attack_path_asset_list.dart';

/// {@template pulumi_threatdetection_attack_path_sensitive_asset_config_attack_path_sensitive_asset_config_args_doc}
/// The set of arguments for AttackPathSensitiveAssetConfig.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_attack_path_sensitive_asset_config_attack_path_sensitive_asset_config_args_doc}
class AttackPathSensitiveAssetConfigArgs {
  /// The attack path sensitive asset configuration list. See `attack_path_asset_list` below.
  final pulumi.Input<List<AttackPathSensitiveAssetConfigAttackPathAssetList>> attackPathAssetLists;

  /// Creates a new [AttackPathSensitiveAssetConfigArgs].
  /// [attackPathAssetLists] The attack path sensitive asset configuration list. See `attack_path_asset_list` below.
  AttackPathSensitiveAssetConfigArgs({
    required pulumi.Output<List<AttackPathSensitiveAssetConfigAttackPathAssetList>> attackPathAssetLists,
  }) :
      attackPathAssetLists = pulumi.Input.asInput<List<AttackPathSensitiveAssetConfigAttackPathAssetList>>(attackPathAssetLists);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attackPathAssetLists': pulumi.Input.mapInputValue<List<AttackPathSensitiveAssetConfigAttackPathAssetList>, List<Map<String, dynamic>>>(attackPathAssetLists, (value) => pulumi.Input.encodeList<AttackPathSensitiveAssetConfigAttackPathAssetList, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AttackPathSensitiveAssetConfigArgs.fromMap(Map<String, dynamic> map) {
    return AttackPathSensitiveAssetConfigArgs(
      attackPathAssetLists: pulumi.Output.create<List<AttackPathSensitiveAssetConfigAttackPathAssetList>>(pulumi.Input.decodeList<AttackPathSensitiveAssetConfigAttackPathAssetList>(map['attackPathAssetLists'], (value) => AttackPathSensitiveAssetConfigAttackPathAssetList.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

