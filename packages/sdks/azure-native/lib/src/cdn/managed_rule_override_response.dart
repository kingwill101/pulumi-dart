// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a managed rule group override setting.
class ManagedRuleOverrideResponse {
  /// Describes the override action to be applied when rule matches.
  final pulumi.Input<String>? action;

  /// Describes if the managed rule is in enabled or disabled state. Defaults to Disabled if not specified.
  final pulumi.Input<String>? enabledState;

  /// Identifier for the managed rule.
  final pulumi.Input<String> ruleId;

  /// Creates a new [ManagedRuleOverrideResponse].
  /// [action] Describes the override action to be applied when rule matches.
  /// [enabledState] Describes if the managed rule is in enabled or disabled state. Defaults to Disabled if not specified.
  /// [ruleId] Identifier for the managed rule.
  ManagedRuleOverrideResponse({
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

  factory ManagedRuleOverrideResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRuleOverrideResponse(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabledState: (() {
        final guardedValue = map['enabledState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
    );
  }
}
