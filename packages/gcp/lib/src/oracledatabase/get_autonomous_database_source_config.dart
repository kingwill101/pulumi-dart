// ignore_for_file: unused_element, unnecessary_cast


class GetAutonomousDatabaseSourceConfig {
  /// This field specifies if the replication of automatic backups is enabled when creating a Data Guard.
  final bool automaticBackupsReplicationEnabled;
  /// The name of the primary Autonomous Database that is used to create a Peer Autonomous Database from a source.
  final String autonomousDatabase;

  /// Creates a new [GetAutonomousDatabaseSourceConfig].
  /// [automaticBackupsReplicationEnabled] This field specifies if the replication of automatic backups is enabled when creating a Data Guard.
  /// [autonomousDatabase] The name of the primary Autonomous Database that is used to create a Peer Autonomous Database from a source.
  GetAutonomousDatabaseSourceConfig({
    required this.automaticBackupsReplicationEnabled,
    required this.autonomousDatabase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticBackupsReplicationEnabled': automaticBackupsReplicationEnabled,
      'autonomousDatabase': autonomousDatabase,
    };
  }

  factory GetAutonomousDatabaseSourceConfig.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseSourceConfig(
      automaticBackupsReplicationEnabled: map['automaticBackupsReplicationEnabled'] as bool,
      autonomousDatabase: map['autonomousDatabase'] as String,
    );
  }
}

