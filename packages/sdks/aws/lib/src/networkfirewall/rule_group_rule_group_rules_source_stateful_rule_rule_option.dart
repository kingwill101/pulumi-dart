// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleGroupRulesSourceStatefulRuleRuleOption {
  /// Keyword defined by open source detection systems like Snort or Suricata for stateful rule inspection.
  /// See [Snort General Rule Options](http://manual-snort-org.s3-website-us-east-1.amazonaws.com/node31.html) or [Suricata Rule Options](https://suricata.readthedocs.io/en/suricata-5.0.1/rules/intro.html#rule-options) for more details.
  final pulumi.Input<String> keyword;

  /// Set of strings for additional settings to use in stateful rule inspection.
  final pulumi.Input<List<String>>? settings;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatefulRuleRuleOption].
  /// [keyword] Keyword defined by open source detection systems like Snort or Suricata for stateful rule inspection.
  /// [settings] Set of strings for additional settings to use in stateful rule inspection.
  RuleGroupRuleGroupRulesSourceStatefulRuleRuleOption({
    required this.keyword,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyword': keyword, 'settings': ?settings};
  }

  factory RuleGroupRuleGroupRulesSourceStatefulRuleRuleOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleGroupRulesSourceStatefulRuleRuleOption(
      keyword: pulumi.Input.fromValue(map['keyword'] as String),
      settings: (() {
        final guardedValue = map['settings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
