// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstanceGroupManager.
class GetInstanceGroupManagerComputeV1Args {
  final pulumi.Input<String> instanceGroupManager;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  GetInstanceGroupManagerComputeV1Args({
    required this.instanceGroupManager,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceGroupManager'] = instanceGroupManager;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetInstanceGroupManagerComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceGroupManagerComputeV1Args(
      instanceGroupManager:
          pulumi.Input.asInput<String>(map['instanceGroupManager']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
