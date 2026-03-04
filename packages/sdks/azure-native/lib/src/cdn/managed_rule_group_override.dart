// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_override.dart';

/// Defines a managed rule group override setting.
class ManagedRuleGroupOverride {
  /// Describes the managed rule group within the rule set to override
  final pulumi.Input<String> ruleGroupName;

  /// List of rules that will be enabled. If none specified, all rules in the group will be disabled.
  final pulumi.Input<List<ManagedRuleOverride>>? rules;

  /// Creates a new [ManagedRuleGroupOverride].
  /// [ruleGroupName] Describes the managed rule group within the rule set to override
  /// [rules] List of rules that will be enabled. If none specified, all rules in the group will be disabled.
  ManagedRuleGroupOverride({required this.ruleGroupName, this.rules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupName': ruleGroupName,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<ManagedRuleOverride>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  ManagedRuleOverride,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ManagedRuleGroupOverride.fromMap(Map<String, dynamic> map) {
    return ManagedRuleGroupOverride(
      ruleGroupName: pulumi.Input.fromValue(map['ruleGroupName'] as String),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ManagedRuleOverride>(
            guardedValue,
            (value) => ManagedRuleOverride.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
