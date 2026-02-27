// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBackup.
class GetBackupGkebackupV1Args {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> backupPlanId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetBackupGkebackupV1Args({
    required this.backupId,
    required this.backupPlanId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    map['backupPlanId'] = backupPlanId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBackupGkebackupV1Args.fromMap(Map<String, dynamic> map) {
    return GetBackupGkebackupV1Args(
      backupId: pulumi.Input.asInput<String>(map['backupId']),
      backupPlanId: pulumi.Input.asInput<String>(map['backupPlanId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
