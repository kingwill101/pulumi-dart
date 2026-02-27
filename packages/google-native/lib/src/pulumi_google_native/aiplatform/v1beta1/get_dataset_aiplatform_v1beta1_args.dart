// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataset.
class GetDatasetAiplatformV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? readMask;

  GetDatasetAiplatformV1beta1Args({
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

  factory GetDatasetAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetDatasetAiplatformV1beta1Args(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      readMask: pulumi.Input.asOptionalInput<String>(map['readMask']),
    );
  }
}
