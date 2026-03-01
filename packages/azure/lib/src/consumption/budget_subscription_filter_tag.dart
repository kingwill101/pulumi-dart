// ignore_for_file: unused_element, unnecessary_cast


class BudgetSubscriptionFilterTag {
  /// The name of the tag to use for the filter.
  final String name;
  /// The operator to use for comparison. The allowed values are `In`. Defaults to `In`.
  final String? operator;
  /// Specifies a list of values for the tag.
  final List<String> values;

  /// Creates a new [BudgetSubscriptionFilterTag].
  /// [name] The name of the tag to use for the filter.
  /// [operator] The operator to use for comparison. The allowed values are `In`. Defaults to `In`.
  /// [values] Specifies a list of values for the tag.
  BudgetSubscriptionFilterTag({
    required this.name,
    this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operator': ?operator,
      'values': values,
    };
  }

  factory BudgetSubscriptionFilterTag.fromMap(Map<String, dynamic> map) {
    return BudgetSubscriptionFilterTag(
      name: map['name'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

