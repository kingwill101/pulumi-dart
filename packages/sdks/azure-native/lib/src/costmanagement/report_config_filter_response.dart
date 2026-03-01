// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_config_comparison_expression_response.dart';

/// The filter expression to be used in the report.
class ReportConfigFilterResponse {
  /// The logical "AND" expression. Must have at least 2 items.
  final List<ReportConfigFilterResponse>? and;
  /// Has comparison expression for a dimension
  final ReportConfigComparisonExpressionResponse? dimensions;
  /// The logical "OR" expression. Must have at least 2 items.
  final List<ReportConfigFilterResponse>? or;
  /// Has comparison expression for a tag
  final ReportConfigComparisonExpressionResponse? tags;

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
      'and': ?and == null ? null : pulumi.Input.encodeList<ReportConfigFilterResponse, Map<String, dynamic>>(and!, (value) => value.toMap()),
      'dimensions': ?dimensions == null ? null : dimensions!.toMap(),
      'or': ?or == null ? null : pulumi.Input.encodeList<ReportConfigFilterResponse, Map<String, dynamic>>(or!, (value) => value.toMap()),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory ReportConfigFilterResponse.fromMap(Map<String, dynamic> map) {
    return ReportConfigFilterResponse(
      and: map['and'] == null ? null : pulumi.Input.decodeList<ReportConfigFilterResponse>(map['and'], (value) => ReportConfigFilterResponse.fromMap((value as Map).cast<String, dynamic>())),
      dimensions: map['dimensions'] == null ? null : ReportConfigComparisonExpressionResponse.fromMap((map['dimensions'] as Map).cast<String, dynamic>()),
      or: map['or'] == null ? null : pulumi.Input.decodeList<ReportConfigFilterResponse>(map['or'], (value) => ReportConfigFilterResponse.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : ReportConfigComparisonExpressionResponse.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

