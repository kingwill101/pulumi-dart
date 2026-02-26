// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'basic_level_combining_function.dart';
import 'condition.dart';

/// `BasicLevel` is an `AccessLevel` using a set of recommended features.
class BasicLevel {
  /// How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.
  final BasicLevelCombiningFunction? combiningFunction;

  /// A list of requirements for the `AccessLevel` to be granted.
  final List<Condition> conditions;

  BasicLevel({
    this.combiningFunction,
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final combiningFunctionValue = combiningFunction;
    if (combiningFunctionValue != null) {
      map['combiningFunction'] = combiningFunctionValue.value;
    }
    map['conditions'] = Input.encodeList<Condition, Map<String, dynamic>>(
        conditions, (value) => value.toMap());
    return map;
  }

  factory BasicLevel.fromMap(Map<String, dynamic> map) {
    return BasicLevel(
      combiningFunction: map['combiningFunction'] == null
          ? null
          : BasicLevelCombiningFunction.fromValue(
              map['combiningFunction'] as String),
      conditions: Input.decodeList<Condition>(map['conditions'],
          (value) => Condition.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
