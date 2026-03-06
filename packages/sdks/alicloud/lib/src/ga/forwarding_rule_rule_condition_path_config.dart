// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ForwardingRuleRuleConditionPathConfig {
  /// The domain name is 3-128 characters long, which can contain letters, numbers, dashes (-) and width period (.), and supports the use of asterisk (*) and width question mark (?) as wildcard characters.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ForwardingRuleRuleConditionPathConfig].
  /// [values] The domain name is 3-128 characters long, which can contain letters, numbers, dashes (-) and width period (.), and supports the use of asterisk (*) and width question mark (?) as wildcard characters.
  const ForwardingRuleRuleConditionPathConfig({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory ForwardingRuleRuleConditionPathConfig.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleRuleConditionPathConfig(
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

