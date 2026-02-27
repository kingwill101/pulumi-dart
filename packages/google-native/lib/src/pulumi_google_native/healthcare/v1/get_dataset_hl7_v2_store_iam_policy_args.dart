// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDatasetHl7V2StoreIamPolicy.
class GetDatasetHl7V2StoreIamPolicyArgs {
  final Input<String> datasetId;
  final Input<String> hl7V2StoreId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetDatasetHl7V2StoreIamPolicyArgs({
    required this.datasetId,
    required this.hl7V2StoreId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['hl7V2StoreId'] = hl7V2StoreId;
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

  factory GetDatasetHl7V2StoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetHl7V2StoreIamPolicyArgs(
      datasetId: Input.asInput<String>(map['datasetId']),
      hl7V2StoreId: Input.asInput<String>(map['hl7V2StoreId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
