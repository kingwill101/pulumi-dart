// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstanceBackupIamPolicy.
class GetInstanceBackupIamPolicySpannerV1Args {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  GetInstanceBackupIamPolicySpannerV1Args({
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

  factory GetInstanceBackupIamPolicySpannerV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceBackupIamPolicySpannerV1Args(
      backupId: pulumi.Input.asInput<String>(map['backupId']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
