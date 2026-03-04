// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_config_comparison_expression.dart';

/// The filter expression to be used in the report.
class ReportConfigFilter {
  /// The logical "AND" expression. Must have at least 2 items.
  final pulumi.Input<List<ReportConfigFilter>>? and;

  /// Has comparison expression for a dimension
  final pulumi.Input<ReportConfigComparisonExpression>? dimensions;

  /// The logical "OR" expression. Must have at least 2 items.
  final pulumi.Input<List<ReportConfigFilter>>? or;

  /// Has comparison expression for a tag
  final pulumi.Input<ReportConfigComparisonExpression>? tags;

  /// Creates a new [ReportConfigFilter].
  /// [and] The logical "AND" expression. Must have at least 2 items.
  /// [dimensions] Has comparison expression for a dimension
  /// [or] The logical "OR" expression. Must have at least 2 items.
  /// [tags] Has comparison expression for a tag
  ReportConfigFilter({this.and, this.dimensions, this.or, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and':
          ?pulumi.Input.mapOptionalInputValue<
            List<ReportConfigFilter>,
            List<Map<String, dynamic>>
          >(
            and,
            (value) =>
                pulumi.Input.encodeList<
                  ReportConfigFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dimensions':
          ?pulumi.Input.mapOptionalInputValue<
            ReportConfigComparisonExpression,
            Map<String, dynamic>
          >(dimensions, (value) => value.toMap()),
      'or':
          ?pulumi.Input.mapOptionalInputValue<
            List<ReportConfigFilter>,
            List<Map<String, dynamic>>
          >(
            or,
            (value) =>
                pulumi.Input.encodeList<
                  ReportConfigFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            ReportConfigComparisonExpression,
            Map<String, dynamic>
          >(tags, (value) => value.toMap()),
    };
  }

  factory ReportConfigFilter.fromMap(Map<String, dynamic> map) {
    return ReportConfigFilter(
      and: (() {
        final guardedValue = map['and'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ReportConfigFilter>(
            guardedValue,
            (value) => ReportConfigFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      dimensions: (() {
        final guardedValue = map['dimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReportConfigComparisonExpression.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      or: (() {
        final guardedValue = map['or'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ReportConfigFilter>(
            guardedValue,
            (value) => ReportConfigFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReportConfigComparisonExpression.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
