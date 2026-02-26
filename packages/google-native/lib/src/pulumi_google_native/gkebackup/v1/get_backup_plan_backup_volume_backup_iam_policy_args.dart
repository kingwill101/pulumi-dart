// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBackupPlanBackupVolumeBackupIamPolicy.
class GetBackupPlanBackupVolumeBackupIamPolicyArgs {
  final Input<String> backupId;
  final Input<String> backupPlanId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> volumeBackupId;

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
      backupId: Input.asInput<String>(map['backupId']),
      backupPlanId: Input.asInput<String>(map['backupPlanId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      volumeBackupId: Input.asInput<String>(map['volumeBackupId']),
    );
  }
}
