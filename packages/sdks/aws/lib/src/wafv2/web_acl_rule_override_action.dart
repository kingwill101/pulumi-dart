// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleOverrideAction {
  /// Override the rule action with count.
  final pulumi.Input<Map<String, dynamic>?>? count;
  /// Don't override the rule action.
  final pulumi.Input<Map<String, dynamic>?>? none;

  /// Creates a new [WebAclRuleOverrideAction].
  /// [count] Override the rule action with count.
  /// [none] Don't override the rule action.
  const WebAclRuleOverrideAction({
    this.count,
    this.none,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'none': ?none,
    };
  }

  factory WebAclRuleOverrideAction.fromMap(Map<String, dynamic> map) {
    return WebAclRuleOverrideAction(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      none: (() { final guardedValue = map['none']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
