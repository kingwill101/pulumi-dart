// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionJobIamPolicy.
class GetRegionJobIamPolicyArgs {
  final Input<String> jobId;
  final Input<String>? project;
  final Input<String> regionId;

  GetRegionJobIamPolicyArgs({
    required this.jobId,
    this.project,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobId'] = jobId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['regionId'] = regionId;
    return map;
  }

  factory GetRegionJobIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionJobIamPolicyArgs(
      jobId: Input.asInput<String>(map['jobId']),
      project: Input.asOptionalInput<String>(map['project']),
      regionId: Input.asInput<String>(map['regionId']),
    );
  }
}
