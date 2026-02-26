// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../access_levels_access_level_basic_condition/access_levels_access_level_basic_condition.dart';

class AccessLevelsAccessLevelBasic {
  /// How the conditions list should be combined to determine if a request
  /// is granted this AccessLevel. If AND is used, each Condition in
  /// conditions must be satisfied for the AccessLevel to be applied. If
  /// OR is used, at least one Condition in conditions must be satisfied
  /// for the AccessLevel to be applied.
  /// Default value is `AND`.
  /// Possible values are: `AND`, `OR`.
  final String? combiningFunction;

  /// A set of requirements for the AccessLevel to be granted.
  /// Structure is documented below.
  final List<AccessLevelsAccessLevelBasicCondition> conditions;

  AccessLevelsAccessLevelBasic({
    this.combiningFunction,
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final combiningFunctionValue = combiningFunction;
    if (combiningFunctionValue != null) {
      map['combiningFunction'] = combiningFunctionValue;
    }
    map['conditions'] = Input.encodeList<AccessLevelsAccessLevelBasicCondition,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    return map;
  }

  factory AccessLevelsAccessLevelBasic.fromMap(Map<String, dynamic> map) {
    return AccessLevelsAccessLevelBasic(
      combiningFunction: map['combiningFunction'] == null
          ? null
          : map['combiningFunction'] as String,
      conditions: Input.decodeList<AccessLevelsAccessLevelBasicCondition>(
          map['conditions'],
          (value) => AccessLevelsAccessLevelBasicCondition.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
