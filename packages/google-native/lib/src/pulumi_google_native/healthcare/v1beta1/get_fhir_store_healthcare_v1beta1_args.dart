// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFhirStore.
class GetFhirStoreHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> fhirStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetFhirStoreHealthcareV1beta1Args({
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

  factory GetFhirStoreHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetFhirStoreHealthcareV1beta1Args(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      fhirStoreId: pulumi.Input.asInput<String>(map['fhirStoreId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
