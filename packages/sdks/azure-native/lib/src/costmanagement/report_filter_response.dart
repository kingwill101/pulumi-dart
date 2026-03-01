// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_comparison_expression_response.dart';

/// The filter expression to be used in the report.
class ReportFilterResponse {
  /// The logical "AND" expression. Must have at least 2 items.
  final List<ReportFilterResponse>? and;
  /// Has comparison expression for a dimension
  final ReportComparisonExpressionResponse? dimension;
  /// The logical "NOT" expression.
  final ReportFilterResponse? not;
  /// The logical "OR" expression. Must have at least 2 items.
  final List<ReportFilterResponse>? or;
  /// Has comparison expression for a tag
  final ReportComparisonExpressionResponse? tag;

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
      'and': ?and == null ? null : pulumi.Input.encodeList<ReportFilterResponse, Map<String, dynamic>>(and!, (value) => value.toMap()),
      'dimension': ?dimension == null ? null : dimension!.toMap(),
      'not': ?not == null ? null : not!.toMap(),
      'or': ?or == null ? null : pulumi.Input.encodeList<ReportFilterResponse, Map<String, dynamic>>(or!, (value) => value.toMap()),
      'tag': ?tag == null ? null : tag!.toMap(),
    };
  }

  factory ReportFilterResponse.fromMap(Map<String, dynamic> map) {
    return ReportFilterResponse(
      and: map['and'] == null ? null : pulumi.Input.decodeList<ReportFilterResponse>(map['and'], (value) => ReportFilterResponse.fromMap((value as Map).cast<String, dynamic>())),
      dimension: map['dimension'] == null ? null : ReportComparisonExpressionResponse.fromMap((map['dimension'] as Map).cast<String, dynamic>()),
      not: map['not'] == null ? null : ReportFilterResponse.fromMap((map['not'] as Map).cast<String, dynamic>()),
      or: map['or'] == null ? null : pulumi.Input.decodeList<ReportFilterResponse>(map['or'], (value) => ReportFilterResponse.fromMap((value as Map).cast<String, dynamic>())),
      tag: map['tag'] == null ? null : ReportComparisonExpressionResponse.fromMap((map['tag'] as Map).cast<String, dynamic>()),
    );
  }
}

