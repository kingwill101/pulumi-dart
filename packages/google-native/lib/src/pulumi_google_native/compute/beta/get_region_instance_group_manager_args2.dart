// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionInstanceGroupManager.
class GetRegionInstanceGroupManagerArgs2 {
  final Input<String> instanceGroupManager;
  final Input<String>? project;
  final Input<String> region;

  GetRegionInstanceGroupManagerArgs2({
    required this.instanceGroupManager,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceGroupManager'] = instanceGroupManager;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionInstanceGroupManagerArgs2.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerArgs2(
      instanceGroupManager: Input.asInput<String>(map['instanceGroupManager']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
