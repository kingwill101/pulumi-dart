// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataset.
class GetDatasetBigqueryV2Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String>? datasetView;
  final pulumi.Input<String>? project;

  GetDatasetBigqueryV2Args({
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

  factory GetDatasetBigqueryV2Args.fromMap(Map<String, dynamic> map) {
    return GetDatasetBigqueryV2Args(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      datasetView: pulumi.Input.asOptionalInput<String>(map['datasetView']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
