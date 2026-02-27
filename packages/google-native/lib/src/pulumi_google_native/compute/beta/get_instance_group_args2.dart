// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInstanceGroup.
class GetInstanceGroupArgs2 {
  final Input<String> instanceGroup;
  final Input<String>? project;
  final Input<String> zone;

  GetInstanceGroupArgs2({
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

  factory GetInstanceGroupArgs2.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupArgs2(
      instanceGroup: Input.asInput<String>(map['instanceGroup']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
