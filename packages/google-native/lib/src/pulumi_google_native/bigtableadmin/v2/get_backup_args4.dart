// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBackup.
class GetBackupArgs4 {
  final Input<String> backupId;
  final Input<String> clusterId;
  final Input<String> instanceId;
  final Input<String>? project;

  GetBackupArgs4({
    required this.backupId,
    required this.clusterId,
    required this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    map['clusterId'] = clusterId;
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBackupArgs4.fromMap(Map<String, dynamic> map) {
    return GetBackupArgs4(
      backupId: Input.asInput<String>(map['backupId']),
      clusterId: Input.asInput<String>(map['clusterId']),
      instanceId: Input.asInput<String>(map['instanceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
