// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDatasetFhirStoreIamPolicy.
class GetDatasetFhirStoreIamPolicyArgs2 {
  final Input<String> datasetId;
  final Input<String> fhirStoreId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetDatasetFhirStoreIamPolicyArgs2({
    required this.datasetId,
    required this.fhirStoreId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['fhirStoreId'] = fhirStoreId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatasetFhirStoreIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetDatasetFhirStoreIamPolicyArgs2(
      datasetId: Input.asInput<String>(map['datasetId']),
      fhirStoreId: Input.asInput<String>(map['fhirStoreId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
