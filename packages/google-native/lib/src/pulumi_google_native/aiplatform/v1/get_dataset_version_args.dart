// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDatasetVersion.
class GetDatasetVersionArgs {
  final Input<String> datasetId;
  final Input<String> datasetVersionId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? readMask;

  GetDatasetVersionArgs({
    required this.datasetId,
    required this.datasetVersionId,
    required this.location,
    this.project,
    this.readMask,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['datasetVersionId'] = datasetVersionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final readMaskValue = readMask;
    if (readMaskValue != null) {
      map['readMask'] = readMaskValue;
    }
    return map;
  }

  factory GetDatasetVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetVersionArgs(
      datasetId: Input.asInput<String>(map['datasetId']),
      datasetVersionId: Input.asInput<String>(map['datasetVersionId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      readMask: Input.asOptionalInput<String>(map['readMask']),
    );
  }
}
