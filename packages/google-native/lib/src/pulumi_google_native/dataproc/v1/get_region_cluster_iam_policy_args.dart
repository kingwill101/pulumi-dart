// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionClusterIamPolicy.
class GetRegionClusterIamPolicyArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

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
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      regionId: pulumi.Input.asInput<String>(map['regionId']),
    );
  }
}
