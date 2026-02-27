// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstance.
class GetInstanceArgs {
  /// The ID of the alloydb cluster that the instance belongs to.
  /// 'alloydb_cluster_id'
  final pulumi.Input<String> clusterId;

  /// The ID of the alloydb instance.
  /// 'alloydb_instance_id'
  final pulumi.Input<String> instanceId;

  /// (optional)
  /// The canonical id of the location.If it is not provided, the provider project is used. For example: us-east1.
  final pulumi.Input<String>? location;

  /// (optional)
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetInstanceArgs({
    required this.clusterId,
    required this.instanceId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['instanceId'] = instanceId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
