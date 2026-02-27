// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDataset.
class GetDatasetArgs7 {
  final Input<String> datasetId;
  final Input<String> location;
  final Input<String>? project;

  GetDatasetArgs7({
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

  factory GetDatasetArgs7.fromMap(Map<String, dynamic> map) {
    return GetDatasetArgs7(
      datasetId: Input.asInput<String>(map['datasetId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
