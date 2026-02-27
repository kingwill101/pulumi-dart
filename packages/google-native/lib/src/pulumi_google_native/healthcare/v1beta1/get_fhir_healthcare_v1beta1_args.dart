// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFhir.
class GetFhirHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> fhirId;
  final pulumi.Input<String> fhirId1;
  final pulumi.Input<String> fhirStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetFhirHealthcareV1beta1Args({
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

  factory GetFhirHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetFhirHealthcareV1beta1Args(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      fhirId: pulumi.Input.asInput<String>(map['fhirId']),
      fhirId1: pulumi.Input.asInput<String>(map['fhirId1']),
      fhirStoreId: pulumi.Input.asInput<String>(map['fhirStoreId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
