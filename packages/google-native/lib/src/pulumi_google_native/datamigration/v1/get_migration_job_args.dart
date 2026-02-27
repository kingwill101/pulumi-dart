// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMigrationJob.
class GetMigrationJobArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> migrationJobId;
  final pulumi.Input<String>? project;

  GetMigrationJobArgs({
    required this.location,
    required this.migrationJobId,
    this.project,
  });

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
      location: pulumi.Input.asInput<String>(map['location']),
      migrationJobId: pulumi.Input.asInput<String>(map['migrationJobId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
