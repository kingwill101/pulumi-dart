// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1beta1_get_migration_job_iam_policy_datamigration_v1beta1_args_doc}
/// Arguments for getMigrationJobIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1beta1_get_migration_job_iam_policy_datamigration_v1beta1_args_doc}
class GetMigrationJobIamPolicyDatamigrationV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> migrationJobId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMigrationJobIamPolicyDatamigrationV1beta1Args].
  /// [location] Required.
  /// [migrationJobId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetMigrationJobIamPolicyDatamigrationV1beta1Args({
    required String location,
    required String migrationJobId,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       migrationJobId = pulumi.Input.asInput<String>(migrationJobId),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'migrationJobId': migrationJobId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetMigrationJobIamPolicyDatamigrationV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetMigrationJobIamPolicyDatamigrationV1beta1Args(
      location: map['location'] as String,
      migrationJobId: map['migrationJobId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
