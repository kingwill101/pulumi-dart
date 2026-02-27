// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkstationConfig.
class GetWorkstationConfigWorkstationsV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workstationClusterId;
  final pulumi.Input<String> workstationConfigId;

  GetWorkstationConfigWorkstationsV1betaArgs({
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

  factory GetWorkstationConfigWorkstationsV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetWorkstationConfigWorkstationsV1betaArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workstationClusterId:
          pulumi.Input.asInput<String>(map['workstationClusterId']),
      workstationConfigId:
          pulumi.Input.asInput<String>(map['workstationConfigId']),
    );
  }
}
