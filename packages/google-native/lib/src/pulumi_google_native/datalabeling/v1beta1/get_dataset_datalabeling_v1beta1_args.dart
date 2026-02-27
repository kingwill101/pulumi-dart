// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataset.
class GetDatasetDatalabelingV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String>? project;

  GetDatasetDatalabelingV1beta1Args({
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

  factory GetDatasetDatalabelingV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetDatasetDatalabelingV1beta1Args(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
