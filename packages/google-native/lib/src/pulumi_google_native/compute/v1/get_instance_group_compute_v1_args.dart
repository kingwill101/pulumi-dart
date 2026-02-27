// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstanceGroup.
class GetInstanceGroupComputeV1Args {
  final pulumi.Input<String> instanceGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  GetInstanceGroupComputeV1Args({
    required this.instanceGroup,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceGroup'] = instanceGroup;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetInstanceGroupComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupComputeV1Args(
      instanceGroup: pulumi.Input.asInput<String>(map['instanceGroup']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
