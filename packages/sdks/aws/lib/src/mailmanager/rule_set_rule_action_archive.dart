// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleActionArchive {
  /// Policy applied when the action fails.
  final pulumi.Input<String>? actionFailurePolicy;
  /// Identifier of the archive.
  final pulumi.Input<String> targetArchive;

  /// Creates a new [RuleSetRuleActionArchive].
  /// [actionFailurePolicy] Policy applied when the action fails.
  /// [targetArchive] Identifier of the archive.
  const RuleSetRuleActionArchive({
    this.actionFailurePolicy,
    required this.targetArchive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionFailurePolicy': ?actionFailurePolicy,
      'targetArchive': targetArchive,
    };
  }

  factory RuleSetRuleActionArchive.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleActionArchive(
      actionFailurePolicy: (() { final guardedValue = map['actionFailurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetArchive: pulumi.Input.fromValue(map['targetArchive'] as String),
    );
  }
}
