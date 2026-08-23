// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleEvaluationMode {
  /// The mode of an evaluation.
  final pulumi.Input<String>? mode;

  /// Creates a new [RuleEvaluationMode].
  /// [mode] The mode of an evaluation.
  const RuleEvaluationMode({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
    };
  }

  factory RuleEvaluationMode.fromMap(Map<String, dynamic> map) {
    return RuleEvaluationMode(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
