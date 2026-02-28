// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleGroupRulesSourceStatefulRuleRuleOption {
  /// Keyword defined by open source detection systems like Snort or Suricata for stateful rule inspection.
  /// See [Snort General Rule Options](http://manual-snort-org.s3-website-us-east-1.amazonaws.com/node31.html) or [Suricata Rule Options](https://suricata.readthedocs.io/en/suricata-5.0.1/rules/intro.html#rule-options) for more details.
  final String keyword;

  /// Set of strings for additional settings to use in stateful rule inspection.
  final List<String>? settings;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatefulRuleRuleOption].
  /// [keyword] Keyword defined by open source detection systems like Snort or Suricata for stateful rule inspection.
  /// [settings] Set of strings for additional settings to use in stateful rule inspection.
  RuleGroupRuleGroupRulesSourceStatefulRuleRuleOption({
    required this.keyword,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyword'] = keyword;
    final settingsValue = settings;
    if (settingsValue != null) {
      map['settings'] = settingsValue;
    }
    return map;
  }

  factory RuleGroupRuleGroupRulesSourceStatefulRuleRuleOption.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatefulRuleRuleOption(
      keyword: map['keyword'] as String,
      settings: map['settings'] == null
          ? null
          : (map['settings'] as List).cast<String>(),
    );
  }
}
