// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getWorkstationCluster.
class GetWorkstationClusterArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> workstationClusterId;

  GetWorkstationClusterArgs2({
    required this.location,
    this.project,
    required this.workstationClusterId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workstationClusterId'] = workstationClusterId;
    return map;
  }

  factory GetWorkstationClusterArgs2.fromMap(Map<String, dynamic> map) {
    return GetWorkstationClusterArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      workstationClusterId: Input.asInput<String>(map['workstationClusterId']),
    );
  }
}
