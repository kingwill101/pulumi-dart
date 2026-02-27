// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataset.
class GetDatasetHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDatasetHealthcareV1beta1Args({
    required this.datasetId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatasetHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetDatasetHealthcareV1beta1Args(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
