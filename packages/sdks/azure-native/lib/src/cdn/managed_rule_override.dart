// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a managed rule group override setting.
class ManagedRuleOverride {
  /// Describes the override action to be applied when rule matches.
  final pulumi.Input<String>? action;
  /// Describes if the managed rule is in enabled or disabled state. Defaults to Disabled if not specified.
  final pulumi.Input<String>? enabledState;
  /// Identifier for the managed rule.
  final pulumi.Input<String> ruleId;

  /// Creates a new [ManagedRuleOverride].
  /// [action] Describes the override action to be applied when rule matches.
  /// [enabledState] Describes if the managed rule is in enabled or disabled state. Defaults to Disabled if not specified.
  /// [ruleId] Identifier for the managed rule.
  ManagedRuleOverride({
    this.action,
    this.enabledState,
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'enabledState': ?enabledState,
      'ruleId': ruleId,
    };
  }

  factory ManagedRuleOverride.fromMap(Map<String, dynamic> map) {
    return ManagedRuleOverride(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      enabledState: map['enabledState'] == null ? null : (map['enabledState']! as String).input(),
      ruleId: (map['ruleId'] as String).input(),
    );
  }
}

