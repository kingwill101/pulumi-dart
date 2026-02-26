// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Mesh.
class MeshArgs {
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final Input<String>? description;

  /// Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to be redirected to this port regardless of its actual ip:port destination. If unset, a port '15001' is used as the interception port. This is applicable only for sidecar proxy deployments.
  final Input<int>? interceptionPort;

  /// Optional. Set of label tags associated with the Mesh resource.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Required. Short name of the Mesh resource to be created.
  final Input<String> meshId;

  /// Name of the Mesh resource. It matches pattern `projects/*/locations/global/meshes/`.
  final Input<String>? name;
  final Input<String>? project;

  MeshArgs({
    this.description,
    this.interceptionPort,
    this.labels,
    this.location,
    required this.meshId,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final interceptionPortValue = interceptionPort;
    if (interceptionPortValue != null) {
      map['interceptionPort'] = interceptionPortValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['meshId'] = meshId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory MeshArgs.fromMap(Map<String, dynamic> map) {
    return MeshArgs(
      description: Input.asOptionalInput<String>(map['description']),
      interceptionPort: Input.asOptionalInput<int>(map['interceptionPort']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      meshId: Input.asInput<String>(map['meshId']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
