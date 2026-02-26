// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCluster.
class GetClusterArgs6 {
  final Input<String> clusterId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> projectId;
  final Input<String> zone;

  GetClusterArgs6({
    required this.clusterId,
    required this.location,
    this.project,
    required this.projectId,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['projectId'] = projectId;
    map['zone'] = zone;
    return map;
  }

  factory GetClusterArgs6.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs6(
      clusterId: Input.asInput<String>(map['clusterId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      projectId: Input.asInput<String>(map['projectId']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
