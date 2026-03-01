// ignore_for_file: unused_element, unnecessary_cast


class RuleRuleConditionHostConfig {
  /// Add one or more IP addresses or IP address segments. You can add up to 5 forwarding rules in a SourceIp.
  final List<String>? values;

  /// Creates a new [RuleRuleConditionHostConfig].
  /// [values] Add one or more IP addresses or IP address segments. You can add up to 5 forwarding rules in a SourceIp.
  RuleRuleConditionHostConfig({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory RuleRuleConditionHostConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleConditionHostConfig(
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

