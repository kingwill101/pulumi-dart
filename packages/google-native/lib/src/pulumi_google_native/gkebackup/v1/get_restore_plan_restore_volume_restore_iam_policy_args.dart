// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRestorePlanRestoreVolumeRestoreIamPolicy.
class GetRestorePlanRestoreVolumeRestoreIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> restoreId;
  final pulumi.Input<String> restorePlanId;
  final pulumi.Input<String> volumeRestoreId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      restoreId: pulumi.Input.asInput<String>(map['restoreId']),
      restorePlanId: pulumi.Input.asInput<String>(map['restorePlanId']),
      volumeRestoreId: pulumi.Input.asInput<String>(map['volumeRestoreId']),
    );
  }
}
