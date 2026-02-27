// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCluster.
class GetClusterContainerV1beta1Args {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> projectId;
  final pulumi.Input<String> zone;

  GetClusterContainerV1beta1Args({
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

  factory GetClusterContainerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetClusterContainerV1beta1Args(
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      projectId: pulumi.Input.asInput<String>(map['projectId']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
