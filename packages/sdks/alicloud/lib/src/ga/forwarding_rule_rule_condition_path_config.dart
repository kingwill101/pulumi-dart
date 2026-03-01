// ignore_for_file: unused_element, unnecessary_cast


class ForwardingRuleRuleConditionPathConfig {
  /// The domain name is 3-128 characters long, which can contain letters, numbers, dashes (-) and width period (.), and supports the use of asterisk (*) and width question mark (?) as wildcard characters.
  final List<String>? values;

  /// Creates a new [ForwardingRuleRuleConditionPathConfig].
  /// [values] The domain name is 3-128 characters long, which can contain letters, numbers, dashes (-) and width period (.), and supports the use of asterisk (*) and width question mark (?) as wildcard characters.
  ForwardingRuleRuleConditionPathConfig({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory ForwardingRuleRuleConditionPathConfig.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleRuleConditionPathConfig(
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

