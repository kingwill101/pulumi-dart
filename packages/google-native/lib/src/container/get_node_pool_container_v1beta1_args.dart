// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_v1beta1_get_node_pool_container_v1beta1_args_doc}
/// Arguments for getNodePool.
/// {@endtemplate}
/// {@macro pulumi_container_v1beta1_get_node_pool_container_v1beta1_args_doc}
class GetNodePoolContainerV1beta1Args {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> nodePoolId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> projectId;
  final pulumi.Input<String> zone;

  /// Creates a new [GetNodePoolContainerV1beta1Args].
  /// [clusterId] Required.
  /// [location] Required.
  /// [nodePoolId] Required.
  /// [project] Optional.
  /// [projectId] Required.
  /// [zone] Required.
  GetNodePoolContainerV1beta1Args({
    required String clusterId,
    required String location,
    required String nodePoolId,
    String? project,
    required String projectId,
    required String zone,
  }) : clusterId = pulumi.Input.asInput<String>(clusterId),
       location = pulumi.Input.asInput<String>(location),
       nodePoolId = pulumi.Input.asInput<String>(nodePoolId),
       project = pulumi.Input.asOptionalInput<String>(project),
       projectId = pulumi.Input.asInput<String>(projectId),
       zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'location': location,
      'nodePoolId': nodePoolId,
      'project': ?project,
      'projectId': projectId,
      'zone': zone,
    };
  }

  factory GetNodePoolContainerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetNodePoolContainerV1beta1Args(
      clusterId: map['clusterId'] as String,
      location: map['location'] as String,
      nodePoolId: map['nodePoolId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      projectId: map['projectId'] as String,
      zone: map['zone'] as String,
    );
  }
}
