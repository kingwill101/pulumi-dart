// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBackup.
class GetBackupArgs7 {
  final Input<String> backupId;
  final Input<String> backupPlanId;
  final Input<String> location;
  final Input<String>? project;

  GetBackupArgs7({
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

  factory GetBackupArgs7.fromMap(Map<String, dynamic> map) {
    return GetBackupArgs7(
      backupId: Input.asInput<String>(map['backupId']),
      backupPlanId: Input.asInput<String>(map['backupPlanId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
