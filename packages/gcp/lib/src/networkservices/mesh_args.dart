// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_mesh_mesh_args_doc}
/// The set of arguments for Mesh.
/// {@endtemplate}
/// {@macro pulumi_networkservices_mesh_mesh_args_doc}
class MeshArgs {
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the
  /// specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to
  /// be redirected to this port regardless of its actual ip:port destination. If unset, a port
  /// '15001' is used as the interception port. This will is applicable only for sidecar proxy
  /// deployments.
  final pulumi.Input<int>? interceptionPort;

  /// Set of label tags associated with the Mesh resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Location (region) of the Mesh resource to be created. Only the value 'global' is currently allowed; defaults to 'global' if omitted.
  final pulumi.Input<String>? location;

  /// Short name of the Mesh resource to be created.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [MeshArgs].
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [interceptionPort] Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the
  /// [labels] Set of label tags associated with the Mesh resource.
  /// [location] Location (region) of the Mesh resource to be created. Only the value 'global' is currently allowed; defaults to 'global' if omitted.
  /// [name] Short name of the Mesh resource to be created.
  /// [project] The ID of the project in which the resource belongs.
  MeshArgs({
    String? description,
    int? interceptionPort,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       interceptionPort = pulumi.Input.asOptionalInput<int>(interceptionPort),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'interceptionPort': ?interceptionPort,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory MeshArgs.fromMap(Map<String, dynamic> map) {
    return MeshArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      interceptionPort: map['interceptionPort'] == null
          ? null
          : map['interceptionPort'] as int,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
