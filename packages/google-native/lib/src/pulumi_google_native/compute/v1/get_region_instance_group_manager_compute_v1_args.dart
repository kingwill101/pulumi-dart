// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionInstanceGroupManager.
class GetRegionInstanceGroupManagerComputeV1Args {
  final pulumi.Input<String> instanceGroupManager;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetRegionInstanceGroupManagerComputeV1Args({
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

  factory GetRegionInstanceGroupManagerComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerComputeV1Args(
      instanceGroupManager:
          pulumi.Input.asInput<String>(map['instanceGroupManager']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
