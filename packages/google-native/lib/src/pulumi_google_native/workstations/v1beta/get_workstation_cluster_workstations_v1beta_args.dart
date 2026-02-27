// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkstationCluster.
class GetWorkstationClusterWorkstationsV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workstationClusterId;

  GetWorkstationClusterWorkstationsV1betaArgs({
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

  factory GetWorkstationClusterWorkstationsV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetWorkstationClusterWorkstationsV1betaArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workstationClusterId:
          pulumi.Input.asInput<String>(map['workstationClusterId']),
    );
  }
}
