// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getReportDefinition.
class GetReportDefinitionArgs {
  /// Name of the report definition to match.
  final Input<String> reportName;

  /// Map of key-value pairs assigned to the resource.
  final Input<Map<String, String>>? tags;

  GetReportDefinitionArgs({
    required this.reportName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['reportName'] = reportName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetReportDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetReportDefinitionArgs(
      reportName: Input.asInput<String>(map['reportName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
