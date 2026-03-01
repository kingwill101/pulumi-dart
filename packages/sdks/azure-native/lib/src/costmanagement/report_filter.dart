// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_comparison_expression.dart';

/// The filter expression to be used in the report.
class ReportFilter {
  /// The logical "AND" expression. Must have at least 2 items.
  final List<ReportFilter>? and;
  /// Has comparison expression for a dimension
  final ReportComparisonExpression? dimension;
  /// The logical "NOT" expression.
  final ReportFilter? not;
  /// The logical "OR" expression. Must have at least 2 items.
  final List<ReportFilter>? or;
  /// Has comparison expression for a tag
  final ReportComparisonExpression? tag;

  /// Creates a new [ReportFilter].
  /// [and] The logical "AND" expression. Must have at least 2 items.
  /// [dimension] Has comparison expression for a dimension
  /// [not] The logical "NOT" expression.
  /// [or] The logical "OR" expression. Must have at least 2 items.
  /// [tag] Has comparison expression for a tag
  ReportFilter({
    this.and,
    this.dimension,
    this.not,
    this.or,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?and == null ? null : pulumi.Input.encodeList<ReportFilter, Map<String, dynamic>>(and!, (value) => value.toMap()),
      'dimension': ?dimension == null ? null : dimension!.toMap(),
      'not': ?not == null ? null : not!.toMap(),
      'or': ?or == null ? null : pulumi.Input.encodeList<ReportFilter, Map<String, dynamic>>(or!, (value) => value.toMap()),
      'tag': ?tag == null ? null : tag!.toMap(),
    };
  }

  factory ReportFilter.fromMap(Map<String, dynamic> map) {
    return ReportFilter(
      and: map['and'] == null ? null : pulumi.Input.decodeList<ReportFilter>(map['and'], (value) => ReportFilter.fromMap((value as Map).cast<String, dynamic>())),
      dimension: map['dimension'] == null ? null : ReportComparisonExpression.fromMap((map['dimension'] as Map).cast<String, dynamic>()),
      not: map['not'] == null ? null : ReportFilter.fromMap((map['not'] as Map).cast<String, dynamic>()),
      or: map['or'] == null ? null : pulumi.Input.decodeList<ReportFilter>(map['or'], (value) => ReportFilter.fromMap((value as Map).cast<String, dynamic>())),
      tag: map['tag'] == null ? null : ReportComparisonExpression.fromMap((map['tag'] as Map).cast<String, dynamic>()),
    );
  }
}

