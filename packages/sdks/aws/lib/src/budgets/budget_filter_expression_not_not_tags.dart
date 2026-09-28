// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetFilterExpressionNotNotTags {
  /// Tag key to filter on.
  final pulumi.Input<String?>? key;
  /// Match options for the tag filter. Valid values are `EQUALS`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `GREATER_THAN_OR_EQUAL`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`. Note: `ABSENT` is not supported due to AWS API contradictions (it requires values to be absent but also cannot have values set).
  final pulumi.Input<List<String>?>? matchOptions;
  /// List of tag values to match. At least one value is required.
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [BudgetFilterExpressionNotNotTags].
  /// [key] Tag key to filter on.
  /// [matchOptions] Match options for the tag filter. Valid values are `EQUALS`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `GREATER_THAN_OR_EQUAL`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`. Note: `ABSENT` is not supported due to AWS API contradictions (it requires values to be absent but also cannot have values set).
  /// [values] List of tag values to match. At least one value is required.
  const BudgetFilterExpressionNotNotTags({
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

  factory BudgetFilterExpressionNotNotTags.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionNotNotTags(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchOptions: (() { final guardedValue = map['matchOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
