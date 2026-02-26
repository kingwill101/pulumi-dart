// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCluster.
class GetClusterArgs5 {
  final Input<String> clusterId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? projectId;
  final Input<String>? zone;

  GetClusterArgs5({
    required this.clusterId,
    required this.location,
    this.project,
    this.projectId,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetClusterArgs5.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs5(
      clusterId: Input.asInput<String>(map['clusterId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      projectId: Input.asOptionalInput<String>(map['projectId']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
