// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkstation.
class GetWorkstationArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> workstationClusterId;
  final Input<String> workstationConfigId;
  final Input<String> workstationId;

  GetWorkstationArgs2({
    required this.location,
    this.project,
    required this.workstationClusterId,
    required this.workstationConfigId,
    required this.workstationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workstationClusterId'] = workstationClusterId;
    map['workstationConfigId'] = workstationConfigId;
    map['workstationId'] = workstationId;
    return map;
  }

  factory GetWorkstationArgs2.fromMap(Map<String, dynamic> map) {
    return GetWorkstationArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      workstationClusterId: Input.asInput<String>(map['workstationClusterId']),
      workstationConfigId: Input.asInput<String>(map['workstationConfigId']),
      workstationId: Input.asInput<String>(map['workstationId']),
    );
  }
}
