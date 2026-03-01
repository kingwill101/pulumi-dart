// ignore_for_file: unused_element, unnecessary_cast


class CostCategoryRuleRuleNotDimension {
  /// Unique name of the Cost Category.
  final String? key;
  /// Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is `EQUALS` and `CASE_SENSITIVE`. Valid values are: `EQUALS`,  `ABSENT`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`.
  final List<String>? matchOptions;
  /// Specific value of the Cost Category.
  final List<String>? values;

  /// Creates a new [CostCategoryRuleRuleNotDimension].
  /// [key] Unique name of the Cost Category.
  /// [matchOptions] Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is `EQUALS` and `CASE_SENSITIVE`. Valid values are: `EQUALS`,  `ABSENT`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`.
  /// [values] Specific value of the Cost Category.
  CostCategoryRuleRuleNotDimension({
    this.key,
    this.matchOptions,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'matchOptions': ?matchOptions,
      'values': ?values,
    };
  }

  factory CostCategoryRuleRuleNotDimension.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleNotDimension(
      key: map['key'] == null ? null : map['key'] as String,
      matchOptions: map['matchOptions'] == null ? null : (map['matchOptions'] as List).cast<String>(),
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

