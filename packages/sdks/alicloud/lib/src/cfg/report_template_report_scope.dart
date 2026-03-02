// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportTemplateReportScope {
  /// Key for reporting scope, currently supported:
  /// - AggregatorId
  /// - CompliancePackId
  /// - RuleId
  final pulumi.Input<String>? key;
  /// The matching logic. Currently, only In is supported.
  final pulumi.Input<String>? matchType;
  /// The value of the report range. Each k-v pair is an OR logic. For example, multiple rule IDs can be separated by commas (,).
  final pulumi.Input<String>? value;

  /// Creates a new [ReportTemplateReportScope].
  /// [key] Key for reporting scope, currently supported:
  /// [matchType] The matching logic. Currently, only In is supported.
  /// [value] The value of the report range. Each k-v pair is an OR logic. For example, multiple rule IDs can be separated by commas (,).
  ReportTemplateReportScope({
    this.key,
    this.matchType,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'matchType': ?matchType,
      'value': ?value,
    };
  }

  factory ReportTemplateReportScope.fromMap(Map<String, dynamic> map) {
    return ReportTemplateReportScope(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      matchType: map['matchType'] == null ? null : (map['matchType'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

