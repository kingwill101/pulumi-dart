// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMigrationJob.
class GetMigrationJobArgs2 {
  final Input<String> location;
  final Input<String> migrationJobId;
  final Input<String>? project;

  GetMigrationJobArgs2({
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

  factory GetMigrationJobArgs2.fromMap(Map<String, dynamic> map) {
    return GetMigrationJobArgs2(
      location: Input.asInput<String>(map['location']),
      migrationJobId: Input.asInput<String>(map['migrationJobId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
