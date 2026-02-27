// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInstanceGroupManager.
class GetInstanceGroupManagerArgs2 {
  final Input<String> instanceGroupManager;
  final Input<String>? project;
  final Input<String> zone;

  GetInstanceGroupManagerArgs2({
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

  factory GetInstanceGroupManagerArgs2.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerArgs2(
      instanceGroupManager: Input.asInput<String>(map['instanceGroupManager']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
