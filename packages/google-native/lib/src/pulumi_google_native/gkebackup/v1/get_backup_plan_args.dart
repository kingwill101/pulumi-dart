// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBackupPlan.
class GetBackupPlanArgs {
  final Input<String> backupPlanId;
  final Input<String> location;
  final Input<String>? project;

  GetBackupPlanArgs({
    required this.backupPlanId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupPlanId'] = backupPlanId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanArgs(
      backupPlanId: Input.asInput<String>(map['backupPlanId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
