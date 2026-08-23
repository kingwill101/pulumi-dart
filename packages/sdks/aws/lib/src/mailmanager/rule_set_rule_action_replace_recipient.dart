// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleActionReplaceRecipient {
  /// Replacement envelope recipient addresses.
  final pulumi.Input<List<String>>? replaceWiths;

  /// Creates a new [RuleSetRuleActionReplaceRecipient].
  /// [replaceWiths] Replacement envelope recipient addresses.
  const RuleSetRuleActionReplaceRecipient({
    this.replaceWiths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replaceWiths': ?replaceWiths,
    };
  }

  factory RuleSetRuleActionReplaceRecipient.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleActionReplaceRecipient(
      replaceWiths: (() { final guardedValue = map['replaceWiths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
