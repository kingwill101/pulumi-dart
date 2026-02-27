// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getWorkstationConfig.
class GetWorkstationConfigArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> workstationClusterId;
  final Input<String> workstationConfigId;

  GetWorkstationConfigArgs2({
    required this.location,
    this.project,
    required this.workstationClusterId,
    required this.workstationConfigId,
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
    return map;
  }

  factory GetWorkstationConfigArgs2.fromMap(Map<String, dynamic> map) {
    return GetWorkstationConfigArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      workstationClusterId: Input.asInput<String>(map['workstationClusterId']),
      workstationConfigId: Input.asInput<String>(map['workstationConfigId']),
    );
  }
}
