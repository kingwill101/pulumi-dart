// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCluster.
class GetClusterVmwareengineV1Args {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  GetClusterVmwareengineV1Args({
    required this.clusterId,
    required this.location,
    required this.privateCloudId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['location'] = location;
    map['privateCloudId'] = privateCloudId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetClusterVmwareengineV1Args.fromMap(Map<String, dynamic> map) {
    return GetClusterVmwareengineV1Args(
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      location: pulumi.Input.asInput<String>(map['location']),
      privateCloudId: pulumi.Input.asInput<String>(map['privateCloudId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
