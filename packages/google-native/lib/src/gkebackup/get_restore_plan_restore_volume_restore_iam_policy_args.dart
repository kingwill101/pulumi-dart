// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkebackup_v1_get_restore_plan_restore_volume_restore_iam_policy_args_doc}
/// Arguments for getRestorePlanRestoreVolumeRestoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_get_restore_plan_restore_volume_restore_iam_policy_args_doc}
class GetRestorePlanRestoreVolumeRestoreIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> restoreId;
  final pulumi.Input<String> restorePlanId;
  final pulumi.Input<String> volumeRestoreId;

  /// Creates a new [GetRestorePlanRestoreVolumeRestoreIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [restoreId] Required.
  /// [restorePlanId] Required.
  /// [volumeRestoreId] Required.
  GetRestorePlanRestoreVolumeRestoreIamPolicyArgs({
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String restoreId,
    required String restorePlanId,
    required String volumeRestoreId,
  })  : location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        restoreId = pulumi.Input.asInput<String>(restoreId),
        restorePlanId = pulumi.Input.asInput<String>(restorePlanId),
        volumeRestoreId = pulumi.Input.asInput<String>(volumeRestoreId);

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
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      restoreId: map['restoreId'] as String,
      restorePlanId: map['restorePlanId'] as String,
      volumeRestoreId: map['volumeRestoreId'] as String,
    );
  }
}
