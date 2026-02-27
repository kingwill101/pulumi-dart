// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCluster.
class GetClusterContainerV1Args {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? projectId;
  final pulumi.Input<String>? zone;

  GetClusterContainerV1Args({
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

  factory GetClusterContainerV1Args.fromMap(Map<String, dynamic> map) {
    return GetClusterContainerV1Args(
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      projectId: pulumi.Input.asOptionalInput<String>(map['projectId']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
