// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_config_comparison_expression_response.dart';

/// The filter expression to be used in the report.
class ReportConfigFilterResponse {
  /// The logical "AND" expression. Must have at least 2 items.
  final pulumi.Input<List<ReportConfigFilterResponse>>? and;
  /// Has comparison expression for a dimension
  final pulumi.Input<ReportConfigComparisonExpressionResponse>? dimensions;
  /// The logical "OR" expression. Must have at least 2 items.
  final pulumi.Input<List<ReportConfigFilterResponse>>? or;
  /// Has comparison expression for a tag
  final pulumi.Input<ReportConfigComparisonExpressionResponse>? tags;

  /// Creates a new [ReportConfigFilterResponse].
  /// [and] The logical "AND" expression. Must have at least 2 items.
  /// [dimensions] Has comparison expression for a dimension
  /// [or] The logical "OR" expression. Must have at least 2 items.
  /// [tags] Has comparison expression for a tag
  ReportConfigFilterResponse({
    this.and,
    this.dimensions,
    this.or,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?pulumi.Input.mapOptionalInputValue<List<ReportConfigFilterResponse>, List<Map<String, dynamic>>>(and, (value) => pulumi.Input.encodeList<ReportConfigFilterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimensions': ?pulumi.Input.mapOptionalInputValue<ReportConfigComparisonExpressionResponse, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'or': ?pulumi.Input.mapOptionalInputValue<List<ReportConfigFilterResponse>, List<Map<String, dynamic>>>(or, (value) => pulumi.Input.encodeList<ReportConfigFilterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<ReportConfigComparisonExpressionResponse, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory ReportConfigFilterResponse.fromMap(Map<String, dynamic> map) {
    return ReportConfigFilterResponse(
      and: map['and'] == null ? null : (pulumi.Input.decodeList<ReportConfigFilterResponse>(map['and'], (value) => ReportConfigFilterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dimensions: map['dimensions'] == null ? null : (ReportConfigComparisonExpressionResponse.fromMap((map['dimensions'] as Map).cast<String, dynamic>())).input(),
      or: map['or'] == null ? null : (pulumi.Input.decodeList<ReportConfigFilterResponse>(map['or'], (value) => ReportConfigFilterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : (ReportConfigComparisonExpressionResponse.fromMap((map['tags'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

