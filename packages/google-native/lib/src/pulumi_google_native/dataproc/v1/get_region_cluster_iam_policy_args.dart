// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionClusterIamPolicy.
class GetRegionClusterIamPolicyArgs {
  final Input<String> clusterId;
  final Input<String>? project;
  final Input<String> regionId;

  GetRegionClusterIamPolicyArgs({
    required this.clusterId,
    this.project,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['regionId'] = regionId;
    return map;
  }

  factory GetRegionClusterIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionClusterIamPolicyArgs(
      clusterId: Input.asInput<String>(map['clusterId']),
      project: Input.asOptionalInput<String>(map['project']),
      regionId: Input.asInput<String>(map['regionId']),
    );
  }
}
