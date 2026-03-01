// ignore_for_file: unused_element, unnecessary_cast


class BudgetManagementGroupFilterTag {
  /// The name of the tag to use for the filter.
  final String name;
  /// The operator to use for comparison. The allowed values are `In`. Defaults to `In`.
  final String? operator;
  /// Specifies a list of values for the tag.
  final List<String> values;

  /// Creates a new [BudgetManagementGroupFilterTag].
  /// [name] The name of the tag to use for the filter.
  /// [operator] The operator to use for comparison. The allowed values are `In`. Defaults to `In`.
  /// [values] Specifies a list of values for the tag.
  BudgetManagementGroupFilterTag({
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

  factory BudgetManagementGroupFilterTag.fromMap(Map<String, dynamic> map) {
    return BudgetManagementGroupFilterTag(
      name: map['name'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

