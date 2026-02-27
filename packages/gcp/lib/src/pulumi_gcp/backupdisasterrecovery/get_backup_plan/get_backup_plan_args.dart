// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBackupPlan.
class GetBackupPlanArgs {
  final pulumi.Input<String> backupPlanId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      backupPlanId: pulumi.Input.asInput<String>(map['backupPlanId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
