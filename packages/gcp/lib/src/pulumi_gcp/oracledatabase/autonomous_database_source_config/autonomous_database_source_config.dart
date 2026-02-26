// ignore_for_file: unused_element, unnecessary_cast

class AutonomousDatabaseSourceConfig {
  /// This field specifies if the replication of automatic backups is enabled when creating a Data Guard.
  final bool? automaticBackupsReplicationEnabled;

  /// The name of the primary Autonomous Database that is used to create a Peer Autonomous Database from a source.
  final String? autonomousDatabase;

  AutonomousDatabaseSourceConfig({
    this.automaticBackupsReplicationEnabled,
    this.autonomousDatabase,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final automaticBackupsReplicationEnabledValue =
        automaticBackupsReplicationEnabled;
    if (automaticBackupsReplicationEnabledValue != null) {
      map['automaticBackupsReplicationEnabled'] =
          automaticBackupsReplicationEnabledValue;
    }
    final autonomousDatabaseValue = autonomousDatabase;
    if (autonomousDatabaseValue != null) {
      map['autonomousDatabase'] = autonomousDatabaseValue;
    }
    return map;
  }

  factory AutonomousDatabaseSourceConfig.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseSourceConfig(
      automaticBackupsReplicationEnabled:
          map['automaticBackupsReplicationEnabled'] == null
              ? null
              : map['automaticBackupsReplicationEnabled'] as bool,
      autonomousDatabase: map['autonomousDatabase'] == null
          ? null
          : map['autonomousDatabase'] as String,
    );
  }
}
