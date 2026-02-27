// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getMigrationJob.
class GetMigrationJobArgs {
  final Input<String> location;
  final Input<String> migrationJobId;
  final Input<String>? project;

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
      location: Input.asInput<String>(map['location']),
      migrationJobId: Input.asInput<String>(map['migrationJobId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
