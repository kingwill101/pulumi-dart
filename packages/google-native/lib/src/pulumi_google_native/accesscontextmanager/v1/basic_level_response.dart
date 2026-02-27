// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_response.dart';

/// `BasicLevel` is an `AccessLevel` using a set of recommended features.
class BasicLevelResponse {
  /// How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.
  final String combiningFunction;

  /// A list of requirements for the `AccessLevel` to be granted.
  final List<ConditionResponse> conditions;

  BasicLevelResponse({
    required this.combiningFunction,
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['combiningFunction'] = combiningFunction;
    map['conditions'] =
        pulumi.Input.encodeList<ConditionResponse, Map<String, dynamic>>(
            conditions, (value) => value.toMap());
    return map;
  }

  factory BasicLevelResponse.fromMap(Map<String, dynamic> map) {
    return BasicLevelResponse(
      combiningFunction: map['combiningFunction'] as String,
      conditions: pulumi.Input.decodeList<ConditionResponse>(
          map['conditions'],
          (value) => ConditionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
