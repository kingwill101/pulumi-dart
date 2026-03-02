// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attack_path_sensitive_asset_config_attack_path_asset_list.dart';

/// Input properties used for looking up and filtering AttackPathSensitiveAssetConfig resources.
class AttackPathSensitiveAssetConfigState {
  /// The attack path sensitive asset configuration list. See `attack_path_asset_list` below.
  final pulumi.Input<List<AttackPathSensitiveAssetConfigAttackPathAssetList>>? attackPathAssetLists;

  /// Creates a new [AttackPathSensitiveAssetConfigState].
  /// [attackPathAssetLists] The attack path sensitive asset configuration list. See `attack_path_asset_list` below.
  AttackPathSensitiveAssetConfigState({
    this.attackPathAssetLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attackPathAssetLists': ?pulumi.Input.mapOptionalInputValue<List<AttackPathSensitiveAssetConfigAttackPathAssetList>, List<Map<String, dynamic>>>(attackPathAssetLists, (value) => pulumi.Input.encodeList<AttackPathSensitiveAssetConfigAttackPathAssetList, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AttackPathSensitiveAssetConfigState.fromMap(Map<String, dynamic> map) {
    return AttackPathSensitiveAssetConfigState(
      attackPathAssetLists: map['attackPathAssetLists'] == null ? null : (pulumi.Input.decodeList<AttackPathSensitiveAssetConfigAttackPathAssetList>(map['attackPathAssetLists'], (value) => AttackPathSensitiveAssetConfigAttackPathAssetList.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

