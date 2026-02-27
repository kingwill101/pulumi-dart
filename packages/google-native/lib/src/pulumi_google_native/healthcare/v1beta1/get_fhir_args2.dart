// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getFhir.
class GetFhirArgs2 {
  final Input<String> datasetId;
  final Input<String> fhirId;
  final Input<String> fhirId1;
  final Input<String> fhirStoreId;
  final Input<String> location;
  final Input<String>? project;

  GetFhirArgs2({
    required this.datasetId,
    required this.fhirId,
    required this.fhirId1,
    required this.fhirStoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['fhirId'] = fhirId;
    map['fhirId1'] = fhirId1;
    map['fhirStoreId'] = fhirStoreId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFhirArgs2.fromMap(Map<String, dynamic> map) {
    return GetFhirArgs2(
      datasetId: Input.asInput<String>(map['datasetId']),
      fhirId: Input.asInput<String>(map['fhirId']),
      fhirId1: Input.asInput<String>(map['fhirId1']),
      fhirStoreId: Input.asInput<String>(map['fhirStoreId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
