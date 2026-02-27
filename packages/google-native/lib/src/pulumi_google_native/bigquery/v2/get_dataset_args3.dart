// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDataset.
class GetDatasetArgs3 {
  final Input<String> datasetId;
  final Input<String>? datasetView;
  final Input<String>? project;

  GetDatasetArgs3({
    required this.datasetId,
    this.datasetView,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    final datasetViewValue = datasetView;
    if (datasetViewValue != null) {
      map['datasetView'] = datasetViewValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatasetArgs3.fromMap(Map<String, dynamic> map) {
    return GetDatasetArgs3(
      datasetId: Input.asInput<String>(map['datasetId']),
      datasetView: Input.asOptionalInput<String>(map['datasetView']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
