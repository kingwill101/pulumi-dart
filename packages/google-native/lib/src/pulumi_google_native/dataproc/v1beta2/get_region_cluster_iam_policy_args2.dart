// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionClusterIamPolicy.
class GetRegionClusterIamPolicyArgs2 {
  final Input<String> clusterId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> regionId;

  GetRegionClusterIamPolicyArgs2({
    required this.clusterId,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
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

  factory GetRegionClusterIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetRegionClusterIamPolicyArgs2(
      clusterId: Input.asInput<String>(map['clusterId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      regionId: Input.asInput<String>(map['regionId']),
    );
  }
}
