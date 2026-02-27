// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstanceGroupManager.
class GetInstanceGroupManagerComputeBetaArgs {
  final pulumi.Input<String> instanceGroupManager;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  GetInstanceGroupManagerComputeBetaArgs({
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

  factory GetInstanceGroupManagerComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceGroupManagerComputeBetaArgs(
      instanceGroupManager:
          pulumi.Input.asInput<String>(map['instanceGroupManager']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
