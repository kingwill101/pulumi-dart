// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReportDefinition.
class GetReportDefinitionArgs {
  /// Name of the report definition to match.
  final pulumi.Input<String> reportName;

  /// Map of key-value pairs assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

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
      reportName: pulumi.Input.asInput<String>(map['reportName']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
