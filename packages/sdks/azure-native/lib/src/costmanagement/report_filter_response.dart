// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_comparison_expression_response.dart';

/// The filter expression to be used in the report.
class ReportFilterResponse {
  /// The logical "AND" expression. Must have at least 2 items.
  final pulumi.Input<List<ReportFilterResponse>>? and;
  /// Has comparison expression for a dimension
  final pulumi.Input<ReportComparisonExpressionResponse>? dimension;
  /// The logical "NOT" expression.
  final pulumi.Input<ReportFilterResponse>? not;
  /// The logical "OR" expression. Must have at least 2 items.
  final pulumi.Input<List<ReportFilterResponse>>? or;
  /// Has comparison expression for a tag
  final pulumi.Input<ReportComparisonExpressionResponse>? tag;

  /// Creates a new [ReportFilterResponse].
  /// [and] The logical "AND" expression. Must have at least 2 items.
  /// [dimension] Has comparison expression for a dimension
  /// [not] The logical "NOT" expression.
  /// [or] The logical "OR" expression. Must have at least 2 items.
  /// [tag] Has comparison expression for a tag
  ReportFilterResponse({
    this.and,
    this.dimension,
    this.not,
    this.or,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?pulumi.Input.mapOptionalInputValue<List<ReportFilterResponse>, List<Map<String, dynamic>>>(and, (value) => pulumi.Input.encodeList<ReportFilterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimension': ?pulumi.Input.mapOptionalInputValue<ReportComparisonExpressionResponse, Map<String, dynamic>>(dimension, (value) => value.toMap()),
      'not': ?pulumi.Input.mapOptionalInputValue<ReportFilterResponse, Map<String, dynamic>>(not, (value) => value.toMap()),
      'or': ?pulumi.Input.mapOptionalInputValue<List<ReportFilterResponse>, List<Map<String, dynamic>>>(or, (value) => pulumi.Input.encodeList<ReportFilterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tag': ?pulumi.Input.mapOptionalInputValue<ReportComparisonExpressionResponse, Map<String, dynamic>>(tag, (value) => value.toMap()),
    };
  }

  factory ReportFilterResponse.fromMap(Map<String, dynamic> map) {
    return ReportFilterResponse(
      and: map['and'] == null ? null : (pulumi.Input.decodeList<ReportFilterResponse>(map['and'], (value) => ReportFilterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dimension: map['dimension'] == null ? null : (ReportComparisonExpressionResponse.fromMap((map['dimension'] as Map).cast<String, dynamic>())).input(),
      not: map['not'] == null ? null : (ReportFilterResponse.fromMap((map['not'] as Map).cast<String, dynamic>())).input(),
      or: map['or'] == null ? null : (pulumi.Input.decodeList<ReportFilterResponse>(map['or'], (value) => ReportFilterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tag: map['tag'] == null ? null : (ReportComparisonExpressionResponse.fromMap((map['tag'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

