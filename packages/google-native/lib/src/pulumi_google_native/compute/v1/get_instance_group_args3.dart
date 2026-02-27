// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInstanceGroup.
class GetInstanceGroupArgs3 {
  final Input<String> instanceGroup;
  final Input<String>? project;
  final Input<String> zone;

  GetInstanceGroupArgs3({
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

  factory GetInstanceGroupArgs3.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupArgs3(
      instanceGroup: Input.asInput<String>(map['instanceGroup']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
