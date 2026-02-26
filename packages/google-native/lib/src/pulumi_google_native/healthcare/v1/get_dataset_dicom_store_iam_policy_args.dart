// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDatasetDicomStoreIamPolicy.
class GetDatasetDicomStoreIamPolicyArgs {
  final Input<String> datasetId;
  final Input<String> dicomStoreId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetDatasetDicomStoreIamPolicyArgs({
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

  factory GetDatasetDicomStoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetDicomStoreIamPolicyArgs(
      datasetId: Input.asInput<String>(map['datasetId']),
      dicomStoreId: Input.asInput<String>(map['dicomStoreId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
