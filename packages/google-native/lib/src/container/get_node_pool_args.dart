// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_v1_get_node_pool_args_doc}
/// Arguments for getNodePool.
/// {@endtemplate}
/// {@macro pulumi_container_v1_get_node_pool_args_doc}
class GetNodePoolArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> nodePoolId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? projectId;
  final pulumi.Input<String>? zone;

  /// Creates a new [GetNodePoolArgs].
  /// [clusterId] Required.
  /// [location] Required.
  /// [nodePoolId] Required.
  /// [project] Optional.
  /// [projectId] Optional.
  /// [zone] Optional.
  GetNodePoolArgs({
    required String clusterId,
    required String location,
    required String nodePoolId,
    String? project,
    String? projectId,
    String? zone,
  })  : clusterId = pulumi.Input.asInput<String>(clusterId),
        location = pulumi.Input.asInput<String>(location),
        nodePoolId = pulumi.Input.asInput<String>(nodePoolId),
        project = pulumi.Input.asOptionalInput<String>(project),
        projectId = pulumi.Input.asOptionalInput<String>(projectId),
        zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['location'] = location;
    map['nodePoolId'] = nodePoolId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetNodePoolArgs(
      clusterId: map['clusterId'] as String,
      location: map['location'] as String,
      nodePoolId: map['nodePoolId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
