// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionInstanceGroupManager.
class GetRegionInstanceGroupManagerArgs {
  final pulumi.Input<String> instanceGroupManager;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetRegionInstanceGroupManagerArgs({
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

  factory GetRegionInstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerArgs(
      instanceGroupManager:
          pulumi.Input.asInput<String>(map['instanceGroupManager']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
