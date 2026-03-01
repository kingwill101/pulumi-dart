// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_get_target_project_vmmigration_v1alpha1_args_doc}
/// Arguments for getTargetProject.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_get_target_project_vmmigration_v1alpha1_args_doc}
class GetTargetProjectVmmigrationV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetProjectId;

  /// Creates a new [GetTargetProjectVmmigrationV1alpha1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [targetProjectId] Required.
  GetTargetProjectVmmigrationV1alpha1Args({
    required String location,
    String? project,
    required String targetProjectId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       targetProjectId = pulumi.Input.asInput<String>(targetProjectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'targetProjectId': targetProjectId,
    };
  }

  factory GetTargetProjectVmmigrationV1alpha1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTargetProjectVmmigrationV1alpha1Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      targetProjectId: map['targetProjectId'] as String,
    );
  }
}
