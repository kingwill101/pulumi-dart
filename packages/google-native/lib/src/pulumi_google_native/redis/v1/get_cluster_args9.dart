// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getCluster.
class GetClusterArgs9 {
  final Input<String> clusterId;
  final Input<String> location;
  final Input<String>? project;

  GetClusterArgs9({
    required this.clusterId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetClusterArgs9.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs9(
      clusterId: Input.asInput<String>(map['clusterId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
