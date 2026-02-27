// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getProjectBigQueryExport.
class GetProjectBigQueryExportArgs {
  final Input<String> bigQueryExportId;
  final Input<String>? project;

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
      bigQueryExportId: Input.asInput<String>(map['bigQueryExportId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
