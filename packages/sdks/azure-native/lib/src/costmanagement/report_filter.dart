// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_comparison_expression.dart';

/// The filter expression to be used in the report.
class ReportFilter {
  /// The logical "AND" expression. Must have at least 2 items.
  final pulumi.Input<List<ReportFilter>>? and;
  /// Has comparison expression for a dimension
  final pulumi.Input<ReportComparisonExpression>? dimension;
  /// The logical "NOT" expression.
  final pulumi.Input<ReportFilter>? not;
  /// The logical "OR" expression. Must have at least 2 items.
  final pulumi.Input<List<ReportFilter>>? or;
  /// Has comparison expression for a tag
  final pulumi.Input<ReportComparisonExpression>? tag;

  /// Creates a new [ReportFilter].
  /// [and] The logical "AND" expression. Must have at least 2 items.
  /// [dimension] Has comparison expression for a dimension
  /// [not] The logical "NOT" expression.
  /// [or] The logical "OR" expression. Must have at least 2 items.
  /// [tag] Has comparison expression for a tag
  const ReportFilter({
    this.and,
    this.dimension,
    this.not,
    this.or,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?pulumi.Input.mapOptionalInputValue<List<ReportFilter>, List<Map<String, dynamic>>>(and, (value) => pulumi.Input.encodeList<ReportFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimension': ?pulumi.Input.mapOptionalInputValue<ReportComparisonExpression, Map<String, dynamic>>(dimension, (value) => value.toMap()),
      'not': ?pulumi.Input.mapOptionalInputValue<ReportFilter, Map<String, dynamic>>(not, (value) => value.toMap()),
      'or': ?pulumi.Input.mapOptionalInputValue<List<ReportFilter>, List<Map<String, dynamic>>>(or, (value) => pulumi.Input.encodeList<ReportFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tag': ?pulumi.Input.mapOptionalInputValue<ReportComparisonExpression, Map<String, dynamic>>(tag, (value) => value.toMap()),
    };
  }

  factory ReportFilter.fromMap(Map<String, dynamic> map) {
    return ReportFilter(
      and: (() { final guardedValue = map['and']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportFilter>(guardedValue, (value) => ReportFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dimension: (() { final guardedValue = map['dimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReportComparisonExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      not: (() { final guardedValue = map['not']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReportFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      or: (() { final guardedValue = map['or']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportFilter>(guardedValue, (value) => ReportFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReportComparisonExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
