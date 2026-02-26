// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getBackup.
class GetBackupResult10 {
  /// The time the backups was created.
  final String createTime;

  /// Optional. A short description of the backup.
  final String description;

  /// Optional. Resource labels to represent user provided metadata.
  final Map<String, String> labels;

  /// The unique name of the Backup in the form of projects/{project_id}/locations/global/domains/{domain_name}/backups/{name}
  final String name;

  /// The current state of the backup.
  final String state;

  /// Additional information about the current status of this backup, if available.
  final String statusMessage;

  /// Indicates whether it’s an on-demand backup or scheduled.
  final String type;

  /// Last update time.
  final String updateTime;

  GetBackupResult10({
    required this.createTime,
    required this.description,
    required this.labels,
    required this.name,
    required this.state,
    required this.statusMessage,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['labels'] = labels;
    map['name'] = name;
    map['state'] = state;
    map['statusMessage'] = statusMessage;
    map['type'] = type;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetBackupResult10.fromMap(Map<String, dynamic> map) {
    return GetBackupResult10(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
