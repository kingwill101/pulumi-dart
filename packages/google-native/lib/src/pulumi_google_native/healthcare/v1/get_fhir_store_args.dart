// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFhirStore.
class GetFhirStoreArgs {
  final Input<String> datasetId;
  final Input<String> fhirStoreId;
  final Input<String> location;
  final Input<String>? project;

  GetFhirStoreArgs({
    required this.datasetId,
    required this.fhirStoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['fhirStoreId'] = fhirStoreId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFhirStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetFhirStoreArgs(
      datasetId: Input.asInput<String>(map['datasetId']),
      fhirStoreId: Input.asInput<String>(map['fhirStoreId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
