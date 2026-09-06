// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StatefulRuleGroupOverride
class StatefulRuleGroupOverrideResponse {
  /// Property action
  final pulumi.Input<String?>? action;

  /// Creates a new [StatefulRuleGroupOverrideResponse].
  /// [action] Property action
  const StatefulRuleGroupOverrideResponse({
    this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
    };
  }

  factory StatefulRuleGroupOverrideResponse.fromMap(Map<String, dynamic> map) {
    return StatefulRuleGroupOverrideResponse(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
