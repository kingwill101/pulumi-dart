// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBackupRun.
class GetBackupRunArgs {
  /// The identifier for this backup run. Unique only for a specific Cloud SQL instance.
  /// If left empty and multiple backups exist for the instance, `most_recent` must be set to `true`.
  final pulumi.Input<int>? backupId;

  /// The name of the instance the backup is taken from.
  final pulumi.Input<String> instance;

  /// Toggles use of the most recent backup run if multiple backups exist for a
  /// Cloud SQL instance.
  final pulumi.Input<bool>? mostRecent;

  /// The project to list instances for. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetBackupRunArgs({
    this.backupId,
    required this.instance,
    this.mostRecent,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupIdValue = backupId;
    if (backupIdValue != null) {
      map['backupId'] = backupIdValue;
    }
    map['instance'] = instance;
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBackupRunArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupRunArgs(
      backupId: pulumi.Input.asOptionalInput<int>(map['backupId']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      mostRecent: pulumi.Input.asOptionalInput<bool>(map['mostRecent']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
