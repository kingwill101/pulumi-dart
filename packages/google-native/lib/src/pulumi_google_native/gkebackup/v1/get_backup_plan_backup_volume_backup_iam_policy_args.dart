// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBackupPlanBackupVolumeBackupIamPolicy.
class GetBackupPlanBackupVolumeBackupIamPolicyArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> backupPlanId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> volumeBackupId;

  GetBackupPlanBackupVolumeBackupIamPolicyArgs({
    required this.backupId,
    required this.backupPlanId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.volumeBackupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    map['backupPlanId'] = backupPlanId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['volumeBackupId'] = volumeBackupId;
    return map;
  }

  factory GetBackupPlanBackupVolumeBackupIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetBackupPlanBackupVolumeBackupIamPolicyArgs(
      backupId: pulumi.Input.asInput<String>(map['backupId']),
      backupPlanId: pulumi.Input.asInput<String>(map['backupPlanId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      volumeBackupId: pulumi.Input.asInput<String>(map['volumeBackupId']),
    );
  }
}
