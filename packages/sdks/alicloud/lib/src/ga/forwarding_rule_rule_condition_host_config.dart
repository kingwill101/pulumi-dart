// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ForwardingRuleRuleConditionHostConfig {
  /// The domain name is 3-128 characters long, which can contain letters, numbers, dashes (-) and width period (.), and supports the use of asterisk (*) and width question mark (?) as wildcard characters.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ForwardingRuleRuleConditionHostConfig].
  /// [values] The domain name is 3-128 characters long, which can contain letters, numbers, dashes (-) and width period (.), and supports the use of asterisk (*) and width question mark (?) as wildcard characters.
  ForwardingRuleRuleConditionHostConfig({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory ForwardingRuleRuleConditionHostConfig.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleRuleConditionHostConfig(
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

