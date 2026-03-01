// ignore_for_file: unused_element, unnecessary_cast


class RuleRuleActionRemoveHeaderConfig {
  final String? key;

  /// Creates a new [RuleRuleActionRemoveHeaderConfig].
  /// [key] Optional.
  RuleRuleActionRemoveHeaderConfig({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory RuleRuleActionRemoveHeaderConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleActionRemoveHeaderConfig(
      key: map['key'] == null ? null : map['key'] as String,
    );
  }
}

