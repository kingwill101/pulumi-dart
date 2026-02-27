// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstanceClusterBackupIamPolicy.
class GetInstanceClusterBackupIamPolicyArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  GetInstanceClusterBackupIamPolicyArgs({
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

  factory GetInstanceClusterBackupIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceClusterBackupIamPolicyArgs(
      backupId: pulumi.Input.asInput<String>(map['backupId']),
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
