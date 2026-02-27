// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getNodePool.
class GetNodePoolArgs2 {
  final Input<String> clusterId;
  final Input<String> location;
  final Input<String> nodePoolId;
  final Input<String>? project;
  final Input<String> projectId;
  final Input<String> zone;

  GetNodePoolArgs2({
    required this.clusterId,
    required this.location,
    required this.nodePoolId,
    this.project,
    required this.projectId,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['location'] = location;
    map['nodePoolId'] = nodePoolId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['projectId'] = projectId;
    map['zone'] = zone;
    return map;
  }

  factory GetNodePoolArgs2.fromMap(Map<String, dynamic> map) {
    return GetNodePoolArgs2(
      clusterId: Input.asInput<String>(map['clusterId']),
      location: Input.asInput<String>(map['location']),
      nodePoolId: Input.asInput<String>(map['nodePoolId']),
      project: Input.asOptionalInput<String>(map['project']),
      projectId: Input.asInput<String>(map['projectId']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
