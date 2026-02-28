// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_file_v1beta1_get_backup_file_v1beta1_args_doc}
/// Arguments for getBackup.
/// {@endtemplate}
/// {@macro pulumi_file_v1beta1_get_backup_file_v1beta1_args_doc}
class GetBackupFileV1beta1Args {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupFileV1beta1Args].
  /// [backupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetBackupFileV1beta1Args({
    required String backupId,
    required String location,
    String? project,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetBackupFileV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetBackupFileV1beta1Args(
      backupId: map['backupId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

