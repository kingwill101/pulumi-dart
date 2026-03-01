// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_get_clone_job_vmmigration_v1alpha1_args_doc}
/// Arguments for getCloneJob.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_get_clone_job_vmmigration_v1alpha1_args_doc}
class GetCloneJobVmmigrationV1alpha1Args {
  final pulumi.Input<String> cloneJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> migratingVmId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetCloneJobVmmigrationV1alpha1Args].
  /// [cloneJobId] Required.
  /// [location] Required.
  /// [migratingVmId] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  GetCloneJobVmmigrationV1alpha1Args({
    required String cloneJobId,
    required String location,
    required String migratingVmId,
    String? project,
    required String sourceId,
  }) : cloneJobId = pulumi.Input.asInput<String>(cloneJobId),
       location = pulumi.Input.asInput<String>(location),
       migratingVmId = pulumi.Input.asInput<String>(migratingVmId),
       project = pulumi.Input.asOptionalInput<String>(project),
       sourceId = pulumi.Input.asInput<String>(sourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloneJobId': cloneJobId,
      'location': location,
      'migratingVmId': migratingVmId,
      'project': ?project,
      'sourceId': sourceId,
    };
  }

  factory GetCloneJobVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetCloneJobVmmigrationV1alpha1Args(
      cloneJobId: map['cloneJobId'] as String,
      location: map['location'] as String,
      migratingVmId: map['migratingVmId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceId: map['sourceId'] as String,
    );
  }
}
