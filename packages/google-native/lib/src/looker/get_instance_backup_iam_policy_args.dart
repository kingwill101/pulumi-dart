// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_looker_v1_get_instance_backup_iam_policy_args_doc}
/// Arguments for getInstanceBackupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_looker_v1_get_instance_backup_iam_policy_args_doc}
class GetInstanceBackupIamPolicyArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceBackupIamPolicyArgs].
  /// [backupId] Required.
  /// [instanceId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetInstanceBackupIamPolicyArgs({
    required String backupId,
    required String instanceId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : backupId = pulumi.Input.asInput<String>(backupId),
        instanceId = pulumi.Input.asInput<String>(instanceId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    map['instanceId'] = instanceId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceBackupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceBackupIamPolicyArgs(
      backupId: map['backupId'] as String,
      instanceId: map['instanceId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
