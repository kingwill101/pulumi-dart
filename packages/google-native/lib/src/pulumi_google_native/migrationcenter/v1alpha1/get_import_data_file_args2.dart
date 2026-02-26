// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getImportDataFile.
class GetImportDataFileArgs2 {
  final Input<String> importDataFileId;
  final Input<String> importJobId;
  final Input<String> location;
  final Input<String>? project;

  GetImportDataFileArgs2({
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

  factory GetImportDataFileArgs2.fromMap(Map<String, dynamic> map) {
    return GetImportDataFileArgs2(
      importDataFileId: Input.asInput<String>(map['importDataFileId']),
      importJobId: Input.asInput<String>(map['importJobId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
