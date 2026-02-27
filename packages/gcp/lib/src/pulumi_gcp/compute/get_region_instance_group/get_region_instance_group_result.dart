// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_region_instance_group_instance/get_region_instance_group_instance.dart';

/// Result data returned by getRegionInstanceGroup.
class GetRegionInstanceGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of instances in the group, as a list of resources, each containing:
  final List<GetRegionInstanceGroupInstance> instances;

  /// String port name
  final String name;
  final String project;
  final String region;
  final String selfLink;

  /// The number of instances in the group.
  final int size;

  GetRegionInstanceGroupResult({
    required this.id,
    required this.instances,
    required this.name,
    required this.project,
    required this.region,
    required this.selfLink,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['instances'] = pulumi.Input.encodeList<GetRegionInstanceGroupInstance,
        Map<String, dynamic>>(instances, (value) => value.toMap());
    map['name'] = name;
    map['project'] = project;
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['size'] = size;
    return map;
  }

  factory GetRegionInstanceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupResult(
      id: map['id'] as String,
      instances: pulumi.Input.decodeList<GetRegionInstanceGroupInstance>(
          map['instances'],
          (value) => GetRegionInstanceGroupInstance.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      project: map['project'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      size: map['size'] as int,
    );
  }
}
