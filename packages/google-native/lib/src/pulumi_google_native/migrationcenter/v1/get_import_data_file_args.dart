// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getImportDataFile.
class GetImportDataFileArgs {
  final pulumi.Input<String> importDataFileId;
  final pulumi.Input<String> importJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetImportDataFileArgs({
    required this.importDataFileId,
    required this.importJobId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['importDataFileId'] = importDataFileId;
    map['importJobId'] = importJobId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetImportDataFileArgs.fromMap(Map<String, dynamic> map) {
    return GetImportDataFileArgs(
      importDataFileId: pulumi.Input.asInput<String>(map['importDataFileId']),
      importJobId: pulumi.Input.asInput<String>(map['importJobId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
