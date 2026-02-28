// ignore_for_file: unused_element, unnecessary_cast


class GetCostCategoryRuleRuleAndAndDimension {
  /// Key for the tag.
  final String key;
  /// Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is `EQUALS` and `CASE_SENSITIVE`. Valid values are: `EQUALS`,  `ABSENT`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`.
  final List<String> matchOptions;
  /// Parameter values.
  final List<String> values;

  /// Creates a new [GetCostCategoryRuleRuleAndAndDimension].
  /// [key] Key for the tag.
  /// [matchOptions] Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is `EQUALS` and `CASE_SENSITIVE`. Valid values are: `EQUALS`,  `ABSENT`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`.
  /// [values] Parameter values.
  GetCostCategoryRuleRuleAndAndDimension({
    required this.key,
    required this.matchOptions,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'matchOptions': matchOptions,
      'values': values,
    };
  }

  factory GetCostCategoryRuleRuleAndAndDimension.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleAndAndDimension(
      key: map['key'] as String,
      matchOptions: (map['matchOptions'] as List).cast<String>(),
      values: (map['values'] as List).cast<String>(),
    );
  }
}

