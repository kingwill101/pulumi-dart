// ignore_for_file: unused_element, unnecessary_cast


class WafRuleConfigActionsBypass {
  /// The IDs of custom rules to skip.
  final List<int>? customRules;
  /// The IDs of specific managed rules to skip.
  final List<int>? regularRules;
  /// The types of managed rules to skip.
  final List<String>? regularTypes;
  /// The scope that is skipped when requests match conditions defined in the whitelist rule.
  final String? skip;
  /// The rule categories that are skipped when requests match conditions defined in the whitelist rule.
  final List<String>? tags;

  /// Creates a new [WafRuleConfigActionsBypass].
  /// [customRules] The IDs of custom rules to skip.
  /// [regularRules] The IDs of specific managed rules to skip.
  /// [regularTypes] The types of managed rules to skip.
  /// [skip] The scope that is skipped when requests match conditions defined in the whitelist rule.
  /// [tags] The rule categories that are skipped when requests match conditions defined in the whitelist rule.
  WafRuleConfigActionsBypass({
    this.customRules,
    this.regularRules,
    this.regularTypes,
    this.skip,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRules': ?customRules,
      'regularRules': ?regularRules,
      'regularTypes': ?regularTypes,
      'skip': ?skip,
      'tags': ?tags,
    };
  }

  factory WafRuleConfigActionsBypass.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigActionsBypass(
      customRules: map['customRules'] == null ? null : (map['customRules'] as List).cast<int>(),
      regularRules: map['regularRules'] == null ? null : (map['regularRules'] as List).cast<int>(),
      regularTypes: map['regularTypes'] == null ? null : (map['regularTypes'] as List).cast<String>(),
      skip: map['skip'] == null ? null : map['skip'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}

