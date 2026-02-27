// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProjectBigQueryExport.
class GetProjectBigQueryExportArgs {
  final pulumi.Input<String> bigQueryExportId;
  final pulumi.Input<String>? project;

  GetProjectBigQueryExportArgs({
    required this.bigQueryExportId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigQueryExportId'] = bigQueryExportId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetProjectBigQueryExportArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectBigQueryExportArgs(
      bigQueryExportId: pulumi.Input.asInput<String>(map['bigQueryExportId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
