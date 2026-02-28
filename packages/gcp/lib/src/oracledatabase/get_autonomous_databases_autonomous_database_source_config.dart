// ignore_for_file: unused_element, unnecessary_cast

class GetAutonomousDatabasesAutonomousDatabaseSourceConfig {
  /// This field specifies if the replication of automatic backups is enabled when creating a Data Guard.
  final bool automaticBackupsReplicationEnabled;

  /// The name of the primary Autonomous Database that is used to create a Peer Autonomous Database from a source.
  final String autonomousDatabase;

  /// Creates a new [GetAutonomousDatabasesAutonomousDatabaseSourceConfig].
  /// [automaticBackupsReplicationEnabled] This field specifies if the replication of automatic backups is enabled when creating a Data Guard.
  /// [autonomousDatabase] The name of the primary Autonomous Database that is used to create a Peer Autonomous Database from a source.
  GetAutonomousDatabasesAutonomousDatabaseSourceConfig({
    required this.automaticBackupsReplicationEnabled,
    required this.autonomousDatabase,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automaticBackupsReplicationEnabled'] =
        automaticBackupsReplicationEnabled;
    map['autonomousDatabase'] = autonomousDatabase;
    return map;
  }

  factory GetAutonomousDatabasesAutonomousDatabaseSourceConfig.fromMap(
      Map<String, dynamic> map) {
    return GetAutonomousDatabasesAutonomousDatabaseSourceConfig(
      automaticBackupsReplicationEnabled:
          map['automaticBackupsReplicationEnabled'] as bool,
      autonomousDatabase: map['autonomousDatabase'] as String,
    );
  }
}
