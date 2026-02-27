// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDataset.
class GetDatasetArgs2 {
  final Input<String> datasetId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? readMask;

  GetDatasetArgs2({
    required this.datasetId,
    required this.location,
    this.project,
    this.readMask,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
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

  factory GetDatasetArgs2.fromMap(Map<String, dynamic> map) {
    return GetDatasetArgs2(
      datasetId: Input.asInput<String>(map['datasetId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      readMask: Input.asOptionalInput<String>(map['readMask']),
    );
  }
}
