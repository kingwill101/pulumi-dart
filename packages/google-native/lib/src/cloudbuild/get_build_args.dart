// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v1_get_build_args_doc}
/// Arguments for getBuild.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_get_build_args_doc}
class GetBuildArgs {
  final pulumi.Input<String> buildId;
  final pulumi.Input<String> id;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> projectId;

  /// Creates a new [GetBuildArgs].
  /// [buildId] Required.
  /// [id] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [projectId] Required.
  GetBuildArgs({
    required String buildId,
    required String id,
    required String location,
    String? project,
    required String projectId,
  }) : buildId = pulumi.Input.asInput<String>(buildId),
       id = pulumi.Input.asInput<String>(id),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       projectId = pulumi.Input.asInput<String>(projectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildId': buildId,
      'id': id,
      'location': location,
      'project': ?project,
      'projectId': projectId,
    };
  }

  factory GetBuildArgs.fromMap(Map<String, dynamic> map) {
    return GetBuildArgs(
      buildId: map['buildId'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
