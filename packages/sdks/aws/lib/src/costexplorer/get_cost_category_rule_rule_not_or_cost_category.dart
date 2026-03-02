// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCostCategoryRuleRuleNotOrCostCategory {
  /// Key for the tag.
  final pulumi.Input<String> key;
  /// Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is `EQUALS` and `CASE_SENSITIVE`. Valid values are: `EQUALS`,  `ABSENT`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`.
  final pulumi.Input<List<String>> matchOptions;
  /// Parameter values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetCostCategoryRuleRuleNotOrCostCategory].
  /// [key] Key for the tag.
  /// [matchOptions] Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is `EQUALS` and `CASE_SENSITIVE`. Valid values are: `EQUALS`,  `ABSENT`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`.
  /// [values] Parameter values.
  GetCostCategoryRuleRuleNotOrCostCategory({
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

  factory GetCostCategoryRuleRuleNotOrCostCategory.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleNotOrCostCategory(
      key: (map['key'] as String).input(),
      matchOptions: ((map['matchOptions'] as List).cast<String>()).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

