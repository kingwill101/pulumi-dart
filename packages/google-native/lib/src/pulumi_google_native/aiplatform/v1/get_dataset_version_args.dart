// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDatasetVersion.
class GetDatasetVersionArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> datasetVersionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? readMask;

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
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      datasetVersionId: pulumi.Input.asInput<String>(map['datasetVersionId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      readMask: pulumi.Input.asOptionalInput<String>(map['readMask']),
    );
  }
}
