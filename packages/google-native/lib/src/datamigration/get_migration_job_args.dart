// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1_get_migration_job_args_doc}
/// Arguments for getMigrationJob.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_get_migration_job_args_doc}
class GetMigrationJobArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> migrationJobId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMigrationJobArgs].
  /// [location] Required.
  /// [migrationJobId] Required.
  /// [project] Optional.
  GetMigrationJobArgs({
    required String location,
    required String migrationJobId,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        migrationJobId = pulumi.Input.asInput<String>(migrationJobId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['migrationJobId'] = migrationJobId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMigrationJobArgs.fromMap(Map<String, dynamic> map) {
    return GetMigrationJobArgs(
      location: map['location'] as String,
      migrationJobId: map['migrationJobId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
