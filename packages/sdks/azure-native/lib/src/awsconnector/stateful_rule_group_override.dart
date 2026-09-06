// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StatefulRuleGroupOverride
class StatefulRuleGroupOverride {
  /// Property action
  final pulumi.Input<dynamic>? action;

  /// Creates a new [StatefulRuleGroupOverride].
  /// [action] Property action
  const StatefulRuleGroupOverride({
    this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
    };
  }

  factory StatefulRuleGroupOverride.fromMap(Map<String, dynamic> map) {
    return StatefulRuleGroupOverride(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
