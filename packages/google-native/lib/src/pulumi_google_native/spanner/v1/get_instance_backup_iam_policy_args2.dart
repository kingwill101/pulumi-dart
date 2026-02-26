// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceBackupIamPolicy.
class GetInstanceBackupIamPolicyArgs2 {
  final Input<String> backupId;
  final Input<String> instanceId;
  final Input<String>? project;

  GetInstanceBackupIamPolicyArgs2({
    required this.backupId,
    required this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceBackupIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetInstanceBackupIamPolicyArgs2(
      backupId: Input.asInput<String>(map['backupId']),
      instanceId: Input.asInput<String>(map['instanceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
