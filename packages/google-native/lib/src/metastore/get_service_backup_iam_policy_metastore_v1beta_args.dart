// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1beta_get_service_backup_iam_policy_metastore_v1beta_args_doc}
/// Arguments for getServiceBackupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1beta_get_service_backup_iam_policy_metastore_v1beta_args_doc}
class GetServiceBackupIamPolicyMetastoreV1betaArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetServiceBackupIamPolicyMetastoreV1betaArgs].
  /// [backupId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serviceId] Required.
  GetServiceBackupIamPolicyMetastoreV1betaArgs({
    required String backupId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String serviceId,
  })  : backupId = pulumi.Input.asInput<String>(backupId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    return map;
  }

  factory GetServiceBackupIamPolicyMetastoreV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetServiceBackupIamPolicyMetastoreV1betaArgs(
      backupId: map['backupId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      serviceId: map['serviceId'] as String,
    );
  }
}
