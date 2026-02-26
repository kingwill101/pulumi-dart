// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionInstanceGroupManager.
class GetRegionInstanceGroupManagerArgs {
  final Input<String> instanceGroupManager;
  final Input<String>? project;
  final Input<String> region;

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
      instanceGroupManager: Input.asInput<String>(map['instanceGroupManager']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
