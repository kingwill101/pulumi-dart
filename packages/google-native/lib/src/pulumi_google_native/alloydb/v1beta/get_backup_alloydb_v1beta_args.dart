// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBackup.
class GetBackupAlloydbV1betaArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetBackupAlloydbV1betaArgs({
    required this.backupId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBackupAlloydbV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupAlloydbV1betaArgs(
      backupId: pulumi.Input.asInput<String>(map['backupId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
