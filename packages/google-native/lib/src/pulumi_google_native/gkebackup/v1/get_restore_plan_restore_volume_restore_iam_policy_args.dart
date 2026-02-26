// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRestorePlanRestoreVolumeRestoreIamPolicy.
class GetRestorePlanRestoreVolumeRestoreIamPolicyArgs {
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> restoreId;
  final Input<String> restorePlanId;
  final Input<String> volumeRestoreId;

  GetRestorePlanRestoreVolumeRestoreIamPolicyArgs({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.restoreId,
    required this.restorePlanId,
    required this.volumeRestoreId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['restoreId'] = restoreId;
    map['restorePlanId'] = restorePlanId;
    map['volumeRestoreId'] = volumeRestoreId;
    return map;
  }

  factory GetRestorePlanRestoreVolumeRestoreIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRestorePlanRestoreVolumeRestoreIamPolicyArgs(
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      restoreId: Input.asInput<String>(map['restoreId']),
      restorePlanId: Input.asInput<String>(map['restorePlanId']),
      volumeRestoreId: Input.asInput<String>(map['volumeRestoreId']),
    );
  }
}
