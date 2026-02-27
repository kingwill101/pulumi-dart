// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getCluster.
class GetClusterArgs11 {
  final Input<String> clusterId;
  final Input<String> location;
  final Input<String> privateCloudId;
  final Input<String>? project;

  GetClusterArgs11({
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

  factory GetClusterArgs11.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs11(
      clusterId: Input.asInput<String>(map['clusterId']),
      location: Input.asInput<String>(map['location']),
      privateCloudId: Input.asInput<String>(map['privateCloudId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
