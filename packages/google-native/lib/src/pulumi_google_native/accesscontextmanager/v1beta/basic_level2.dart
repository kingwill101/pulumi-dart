// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'basic_level_combining_function2.dart';
import 'condition2.dart';

/// `BasicLevel` is an `AccessLevel` using a set of recommended features.
class BasicLevel2 {
  /// How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.
  final BasicLevelCombiningFunction2? combiningFunction;

  /// A list of requirements for the `AccessLevel` to be granted.
  final List<Condition2> conditions;

  BasicLevel2({
    this.combiningFunction,
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final combiningFunctionValue = combiningFunction;
    if (combiningFunctionValue != null) {
      map['combiningFunction'] = combiningFunctionValue.value;
    }
    map['conditions'] = Input.encodeList<Condition2, Map<String, dynamic>>(
        conditions, (value) => value.toMap());
    return map;
  }

  factory BasicLevel2.fromMap(Map<String, dynamic> map) {
    return BasicLevel2(
      combiningFunction: map['combiningFunction'] == null
          ? null
          : BasicLevelCombiningFunction2.fromValue(
              map['combiningFunction'] as String),
      conditions: Input.decodeList<Condition2>(
          map['conditions'],
          (value) =>
              Condition2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
