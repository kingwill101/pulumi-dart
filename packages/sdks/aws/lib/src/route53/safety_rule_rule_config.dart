// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SafetyRuleRuleConfig {
  /// Logical negation of the rule.
  final pulumi.Input<bool> inverted;
  /// Number of controls that must be set when you specify an `ATLEAST` type rule.
  final pulumi.Input<int> threshold;
  /// Rule type. Valid values are `ATLEAST`, `AND`, and `OR`.
  final pulumi.Input<String> type;

  /// Creates a new [SafetyRuleRuleConfig].
  /// [inverted] Logical negation of the rule.
  /// [threshold] Number of controls that must be set when you specify an `ATLEAST` type rule.
  /// [type] Rule type. Valid values are `ATLEAST`, `AND`, and `OR`.
  SafetyRuleRuleConfig({
    required this.inverted,
    required this.threshold,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inverted': inverted,
      'threshold': threshold,
      'type': type,
    };
  }

  factory SafetyRuleRuleConfig.fromMap(Map<String, dynamic> map) {
    return SafetyRuleRuleConfig(
      inverted: (map['inverted'] as bool).input(),
      threshold: (map['threshold'] as int).input(),
      type: (map['type'] as String).input(),
    );
  }
}

