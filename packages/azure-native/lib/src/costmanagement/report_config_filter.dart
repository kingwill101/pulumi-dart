// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_config_comparison_expression.dart';

/// The filter expression to be used in the report.
class ReportConfigFilter {
  /// The logical "AND" expression. Must have at least 2 items.
  final List<ReportConfigFilter>? and;
  /// Has comparison expression for a dimension
  final ReportConfigComparisonExpression? dimensions;
  /// The logical "OR" expression. Must have at least 2 items.
  final List<ReportConfigFilter>? or;
  /// Has comparison expression for a tag
  final ReportConfigComparisonExpression? tags;

  /// Creates a new [ReportConfigFilter].
  /// [and] The logical "AND" expression. Must have at least 2 items.
  /// [dimensions] Has comparison expression for a dimension
  /// [or] The logical "OR" expression. Must have at least 2 items.
  /// [tags] Has comparison expression for a tag
  ReportConfigFilter({
    this.and,
    this.dimensions,
    this.or,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?and == null ? null : pulumi.Input.encodeList<ReportConfigFilter, Map<String, dynamic>>(and!, (value) => value.toMap()),
      'dimensions': ?dimensions == null ? null : dimensions!.toMap(),
      'or': ?or == null ? null : pulumi.Input.encodeList<ReportConfigFilter, Map<String, dynamic>>(or!, (value) => value.toMap()),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory ReportConfigFilter.fromMap(Map<String, dynamic> map) {
    return ReportConfigFilter(
      and: map['and'] == null ? null : pulumi.Input.decodeList<ReportConfigFilter>(map['and'], (value) => ReportConfigFilter.fromMap((value as Map).cast<String, dynamic>())),
      dimensions: map['dimensions'] == null ? null : ReportConfigComparisonExpression.fromMap((map['dimensions'] as Map).cast<String, dynamic>()),
      or: map['or'] == null ? null : pulumi.Input.decodeList<ReportConfigFilter>(map['or'], (value) => ReportConfigFilter.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : ReportConfigComparisonExpression.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

