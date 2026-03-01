// ignore_for_file: unused_element, unnecessary_cast


class GetBudgetResourceGroupFilterNotTag {
  /// The name of this Consumption Budget.
  final String name;
  /// The operator used for comparison.
  final String operator;
  /// A list of values for the tag.
  final List<String> values;

  /// Creates a new [GetBudgetResourceGroupFilterNotTag].
  /// [name] The name of this Consumption Budget.
  /// [operator] The operator used for comparison.
  /// [values] A list of values for the tag.
  GetBudgetResourceGroupFilterNotTag({
    required this.name,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operator': operator,
      'values': values,
    };
  }

  factory GetBudgetResourceGroupFilterNotTag.fromMap(Map<String, dynamic> map) {
    return GetBudgetResourceGroupFilterNotTag(
      name: map['name'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

