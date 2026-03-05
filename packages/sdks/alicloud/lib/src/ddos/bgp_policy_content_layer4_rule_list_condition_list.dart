// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BgpPolicyContentLayer4RuleListConditionList {
  /// Matching target character.
  final pulumi.Input<String> arg;
  /// Depth of Matching.
  final pulumi.Input<int> depth;
  /// Position to start matching, starting from 0.
  final pulumi.Input<int> position;

  /// Creates a new [BgpPolicyContentLayer4RuleListConditionList].
  /// [arg] Matching target character.
  /// [depth] Depth of Matching.
  /// [position] Position to start matching, starting from 0.
  BgpPolicyContentLayer4RuleListConditionList({
    required this.arg,
    required this.depth,
    required this.position,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arg': arg,
      'depth': depth,
      'position': position,
    };
  }

  factory BgpPolicyContentLayer4RuleListConditionList.fromMap(Map<String, dynamic> map) {
    return BgpPolicyContentLayer4RuleListConditionList(
      arg: pulumi.Input.fromValue(map['arg'] as String),
      depth: pulumi.Input.fromValue(map['depth'] as int),
      position: pulumi.Input.fromValue(map['position'] as int),
    );
  }
}

