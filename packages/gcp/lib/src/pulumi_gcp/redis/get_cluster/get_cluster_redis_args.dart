// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCluster.
class GetClusterRedisArgs {
  /// The name of the Redis cluster.
  final pulumi.Input<String> name;

  /// (optional)
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the Redis cluster.
  final pulumi.Input<String>? region;

  GetClusterRedisArgs({
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

  factory GetClusterRedisArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterRedisArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
