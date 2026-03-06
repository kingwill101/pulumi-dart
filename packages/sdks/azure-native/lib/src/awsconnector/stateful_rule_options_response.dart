// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StatefulRuleOptions
class StatefulRuleOptionsResponse {
  /// Property ruleOrder
  final pulumi.Input<String>? ruleOrder;

  /// Creates a new [StatefulRuleOptionsResponse].
  /// [ruleOrder] Property ruleOrder
  const StatefulRuleOptionsResponse({
    this.ruleOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleOrder': ?ruleOrder,
    };
  }

  factory StatefulRuleOptionsResponse.fromMap(Map<String, dynamic> map) {
    return StatefulRuleOptionsResponse(
      ruleOrder: (() { final guardedValue = map['ruleOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

