// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDatasetDicomStoreIamPolicy.
class GetDatasetDicomStoreIamPolicyHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> dicomStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetDatasetDicomStoreIamPolicyHealthcareV1beta1Args({
    required this.datasetId,
    required this.dicomStoreId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['dicomStoreId'] = dicomStoreId;
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

  factory GetDatasetDicomStoreIamPolicyHealthcareV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetDatasetDicomStoreIamPolicyHealthcareV1beta1Args(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      dicomStoreId: pulumi.Input.asInput<String>(map['dicomStoreId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
