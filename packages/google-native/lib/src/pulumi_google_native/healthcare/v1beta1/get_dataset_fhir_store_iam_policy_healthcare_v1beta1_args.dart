// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDatasetFhirStoreIamPolicy.
class GetDatasetFhirStoreIamPolicyHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> fhirStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetDatasetFhirStoreIamPolicyHealthcareV1beta1Args({
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

  factory GetDatasetFhirStoreIamPolicyHealthcareV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetDatasetFhirStoreIamPolicyHealthcareV1beta1Args(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      fhirStoreId: pulumi.Input.asInput<String>(map['fhirStoreId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
