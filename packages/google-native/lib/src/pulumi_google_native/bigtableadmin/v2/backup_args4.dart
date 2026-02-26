// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Backup.
class BackupArgs4 {
  /// Required. The id of the backup to be created. The `backup_id` along with the parent `parent` are combined as {parent}/backups/{backup_id} to create the full backup name, of the form: `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup_id}`. This string must be between 1 and 50 characters in length and match the regex _a-zA-Z0-9*.
  final Input<String> backupId;
  final Input<String> clusterId;

  /// The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 90 days from the time the request is received. Once the `expire_time` has passed, Cloud Bigtable will delete the backup and free the resources used by the backup.
  final Input<String> expireTime;
  final Input<String> instanceId;

  /// A globally unique identifier for the backup which cannot be changed. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}/ backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and 50 characters in length. The backup is stored in the cluster identified by the prefix of the backup name of the form `projects/{project}/instances/{instance}/clusters/{cluster}`.
  final Input<String>? name;
  final Input<String>? project;

  /// Immutable. Name of the table from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects/{project}/instances/{instance}/tables/{source_table}`.
  final Input<String> sourceTable;

  BackupArgs4({
    required this.backupId,
    required this.clusterId,
    required this.expireTime,
    required this.instanceId,
    this.name,
    this.project,
    required this.sourceTable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    map['clusterId'] = clusterId;
    map['expireTime'] = expireTime;
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sourceTable'] = sourceTable;
    return map;
  }

  factory BackupArgs4.fromMap(Map<String, dynamic> map) {
    return BackupArgs4(
      backupId: Input.asInput<String>(map['backupId']),
      clusterId: Input.asInput<String>(map['clusterId']),
      expireTime: Input.asInput<String>(map['expireTime']),
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      sourceTable: Input.asInput<String>(map['sourceTable']),
    );
  }
}
