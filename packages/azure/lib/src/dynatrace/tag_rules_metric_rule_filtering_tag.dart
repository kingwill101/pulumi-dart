// ignore_for_file: unused_element, unnecessary_cast


class TagRulesMetricRuleFilteringTag {
  /// Action of the filtering tag. Possible values are `Include` and `Exclude`.
  final String action;
  /// Name of the filtering tag.
  final String name;
  /// Value of the filtering tag.
  final String value;

  /// Creates a new [TagRulesMetricRuleFilteringTag].
  /// [action] Action of the filtering tag. Possible values are `Include` and `Exclude`.
  /// [name] Name of the filtering tag.
  /// [value] Value of the filtering tag.
  TagRulesMetricRuleFilteringTag({
    required this.action,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'name': name,
      'value': value,
    };
  }

  factory TagRulesMetricRuleFilteringTag.fromMap(Map<String, dynamic> map) {
    return TagRulesMetricRuleFilteringTag(
      action: map['action'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

