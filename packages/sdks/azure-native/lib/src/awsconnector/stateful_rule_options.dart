// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StatefulRuleOptions
class StatefulRuleOptions {
  /// Property ruleOrder
  final pulumi.Input<String>? ruleOrder;

  /// Creates a new [StatefulRuleOptions].
  /// [ruleOrder] Property ruleOrder
  StatefulRuleOptions({
    this.ruleOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleOrder': ?ruleOrder,
    };
  }

  factory StatefulRuleOptions.fromMap(Map<String, dynamic> map) {
    return StatefulRuleOptions(
      ruleOrder: (() { final guardedValue = map['ruleOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

