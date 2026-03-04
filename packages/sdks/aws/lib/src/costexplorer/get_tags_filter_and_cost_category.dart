// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTagsFilterAndCostCategory {
  /// Unique name of the Cost Category.
  final pulumi.Input<String>? key;

  /// Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is `EQUALS` and `CASE_SENSITIVE`. Valid values are: `EQUALS`,  `ABSENT`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`.
  final pulumi.Input<List<String>>? matchOptions;

  /// Specific value of the Cost Category.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [GetTagsFilterAndCostCategory].
  /// [key] Unique name of the Cost Category.
  /// [matchOptions] Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is `EQUALS` and `CASE_SENSITIVE`. Valid values are: `EQUALS`,  `ABSENT`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`.
  /// [values] Specific value of the Cost Category.
  GetTagsFilterAndCostCategory({this.key, this.matchOptions, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'matchOptions': ?matchOptions,
      'values': ?values,
    };
  }

  factory GetTagsFilterAndCostCategory.fromMap(Map<String, dynamic> map) {
    return GetTagsFilterAndCostCategory(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      matchOptions: (() {
        final guardedValue = map['matchOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
