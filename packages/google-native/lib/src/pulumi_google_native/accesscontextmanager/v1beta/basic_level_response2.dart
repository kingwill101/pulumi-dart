// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'condition_response2.dart';

/// `BasicLevel` is an `AccessLevel` using a set of recommended features.
class BasicLevelResponse2 {
  /// How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.
  final String combiningFunction;

  /// A list of requirements for the `AccessLevel` to be granted.
  final List<ConditionResponse2> conditions;

  BasicLevelResponse2({
    required this.combiningFunction,
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['combiningFunction'] = combiningFunction;
    map['conditions'] =
        Input.encodeList<ConditionResponse2, Map<String, dynamic>>(
            conditions, (value) => value.toMap());
    return map;
  }

  factory BasicLevelResponse2.fromMap(Map<String, dynamic> map) {
    return BasicLevelResponse2(
      combiningFunction: map['combiningFunction'] as String,
      conditions: Input.decodeList<ConditionResponse2>(
          map['conditions'],
          (value) => ConditionResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
