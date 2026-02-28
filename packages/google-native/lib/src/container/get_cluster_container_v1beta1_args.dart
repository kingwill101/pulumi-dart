// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_v1beta1_get_cluster_container_v1beta1_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_container_v1beta1_get_cluster_container_v1beta1_args_doc}
class GetClusterContainerV1beta1Args {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> projectId;
  final pulumi.Input<String> zone;

  /// Creates a new [GetClusterContainerV1beta1Args].
  /// [clusterId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [projectId] Required.
  /// [zone] Required.
  GetClusterContainerV1beta1Args({
    required String clusterId,
    required String location,
    String? project,
    required String projectId,
    required String zone,
  })  : clusterId = pulumi.Input.asInput<String>(clusterId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        projectId = pulumi.Input.asInput<String>(projectId),
        zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['projectId'] = projectId;
    map['zone'] = zone;
    return map;
  }

  factory GetClusterContainerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetClusterContainerV1beta1Args(
      clusterId: map['clusterId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      projectId: map['projectId'] as String,
      zone: map['zone'] as String,
    );
  }
}
