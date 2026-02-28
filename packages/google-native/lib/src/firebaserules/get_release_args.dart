// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebaserules_v1_get_release_args_doc}
/// Arguments for getRelease.
/// {@endtemplate}
/// {@macro pulumi_firebaserules_v1_get_release_args_doc}
class GetReleaseArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> releaseId;

  /// Creates a new [GetReleaseArgs].
  /// [project] Optional.
  /// [releaseId] Required.
  GetReleaseArgs({
    String? project,
    required String releaseId,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        releaseId = pulumi.Input.asInput<String>(releaseId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['releaseId'] = releaseId;
    return map;
  }

  factory GetReleaseArgs.fromMap(Map<String, dynamic> map) {
    return GetReleaseArgs(
      project: map['project'] == null ? null : map['project'] as String,
      releaseId: map['releaseId'] as String,
    );
  }
}
