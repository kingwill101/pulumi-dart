// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../access_level_basic_condition/access_level_basic_condition.dart';

class AccessLevelBasic {
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
  final List<AccessLevelBasicCondition> conditions;

  AccessLevelBasic({
    this.combiningFunction,
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final combiningFunctionValue = combiningFunction;
    if (combiningFunctionValue != null) {
      map['combiningFunction'] = combiningFunctionValue;
    }
    map['conditions'] =
        Input.encodeList<AccessLevelBasicCondition, Map<String, dynamic>>(
            conditions, (value) => value.toMap());
    return map;
  }

  factory AccessLevelBasic.fromMap(Map<String, dynamic> map) {
    return AccessLevelBasic(
      combiningFunction: map['combiningFunction'] == null
          ? null
          : map['combiningFunction'] as String,
      conditions: Input.decodeList<AccessLevelBasicCondition>(
          map['conditions'],
          (value) => AccessLevelBasicCondition.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
