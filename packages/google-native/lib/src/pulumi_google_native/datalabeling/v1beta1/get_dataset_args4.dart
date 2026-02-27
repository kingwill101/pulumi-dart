// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDataset.
class GetDatasetArgs4 {
  final Input<String> datasetId;
  final Input<String>? project;

  GetDatasetArgs4({
    required this.datasetId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatasetArgs4.fromMap(Map<String, dynamic> map) {
    return GetDatasetArgs4(
      datasetId: Input.asInput<String>(map['datasetId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
