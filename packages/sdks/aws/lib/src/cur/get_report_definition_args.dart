// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cur_get_report_definition_get_report_definition_args_doc}
/// Arguments for getReportDefinition.
/// {@endtemplate}
/// {@macro pulumi_cur_get_report_definition_get_report_definition_args_doc}
class GetReportDefinitionArgs {
  /// Name of the report definition to match.
  final pulumi.Input<String> reportName;
  /// Map of key-value pairs assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetReportDefinitionArgs].
  /// [reportName] Name of the report definition to match.
  /// [tags] Map of key-value pairs assigned to the resource.
  GetReportDefinitionArgs({
    required this.reportName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reportName': reportName,
      'tags': ?tags,
    };
  }

  factory GetReportDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetReportDefinitionArgs(
      reportName: (map['reportName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

