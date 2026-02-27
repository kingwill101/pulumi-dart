// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstance.
class GetInstanceMemcacheArgs {
  /// The ID of the memcache instance.
  /// 'memcache_instance_id'
  final pulumi.Input<String> name;

  /// (optional)
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// (optional)
  /// The canonical id of the region. If it is not provided, the provider project is used. For example: us-east1.
  final pulumi.Input<String>? region;

  GetInstanceMemcacheArgs({
    required this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetInstanceMemcacheArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceMemcacheArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
