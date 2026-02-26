// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstance.
class GetInstanceArgs5 {
  /// The ID of the memcache instance.
  /// 'memcache_instance_id'
  final Input<String> name;

  /// (optional)
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// (optional)
  /// The canonical id of the region. If it is not provided, the provider project is used. For example: us-east1.
  final Input<String>? region;

  GetInstanceArgs5({
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

  factory GetInstanceArgs5.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs5(
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
