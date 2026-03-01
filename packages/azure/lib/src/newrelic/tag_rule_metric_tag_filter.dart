// ignore_for_file: unused_element, unnecessary_cast


class TagRuleMetricTagFilter {
  /// Valid actions for a filtering tag. Possible values are `Exclude` and `Include`. Exclusion takes priority over inclusion.
  final String action;
  /// Specifies the name (also known as the key) of the tag.
  final String name;
  /// Specifies the value of the tag.
  final String value;

  /// Creates a new [TagRuleMetricTagFilter].
  /// [action] Valid actions for a filtering tag. Possible values are `Exclude` and `Include`. Exclusion takes priority over inclusion.
  /// [name] Specifies the name (also known as the key) of the tag.
  /// [value] Specifies the value of the tag.
  TagRuleMetricTagFilter({
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

  factory TagRuleMetricTagFilter.fromMap(Map<String, dynamic> map) {
    return TagRuleMetricTagFilter(
      action: map['action'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

