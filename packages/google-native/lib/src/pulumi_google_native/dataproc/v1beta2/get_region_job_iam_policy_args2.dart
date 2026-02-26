// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionJobIamPolicy.
class GetRegionJobIamPolicyArgs2 {
  final Input<String> jobId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> regionId;

  GetRegionJobIamPolicyArgs2({
    required this.jobId,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobId'] = jobId;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['regionId'] = regionId;
    return map;
  }

  factory GetRegionJobIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetRegionJobIamPolicyArgs2(
      jobId: Input.asInput<String>(map['jobId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      regionId: Input.asInput<String>(map['regionId']),
    );
  }
}
